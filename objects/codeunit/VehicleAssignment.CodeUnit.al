codeunit 60101 VehicleAssignment
{
    TableNo = "Rental History";

    procedure InsertAssignment(DriverKey: Code[15]; "Vehicle ID No.": Code[17]);
    var
        RentalHistoryRecord: Record "Rental History";
        DriverDetailsRecord: Record Driver;
        LastEntryNo: Integer;
        CurrentDate: Date;
    begin


        DriverDetailsRecord.Get(DriverKey);
        CarDetailsRecord.Get("Vehicle ID No.");
        //RentalHistoryRecord.Init();

        if not RentalHistoryRecord.FindLast() then begin
            LastEntryNo := 0;
        end else begin
            LastEntryNo := RentalHistoryRecord."Entry No.";
            RentalHistoryRecord."Entry No." := LastEntryNo + 1;
        end;
        //RentalHistoryRecord.DeleteAll();
        RentalHistoryRecord."Driving License Number" := DriverDetailsRecord."Driving License No.";
        RentalHistoryRecord."First Name" := DriverDetailsRecord."First Name";
        RentalHistoryRecord."Second Name" := DriverDetailsRecord."Last Name";
        RentalHistoryRecord."Arr. Date" := DriverDetailsRecord."Arrival Date";
        RentalHistoryRecord."Depart. Date" := DriverDetailsRecord."Departure Date";
        RentalHistoryRecord.Location := DriverDetailsRecord."Job Site";
        RentalHistoryRecord.Price := CarDetailsRecord."Price per Day";
        RentalHistoryRecord."Vehicle ID No." := CarDetailsRecord."Vehicle ID No.";
        RentalHistoryRecord."Car Brand" := CarDetailsRecord.Brand;
        RentalHistoryRecord."Car Model" := CarDetailsRecord.Model;
        RentalHistoryRecord."Car Type" := CarDetailsRecord."Required Employee Car Type";
        RentalHistoryRecord.Insurance := CarDetailsRecord."Car Insurance Policy";
        CurrentDate := Today();
        RentalHistoryRecord."Rented Date" := CurrentDate;

        RentalHistoryRecord.Insert(true);

        Message('The Car has been booked');

        BookStatusProcedure();

    end;

    procedure BookStatusProcedure();

    begin
        if CarDetailsRecord."Book Status" = CarDetailsRecord."Book Status"::"Not Booked" then begin
            CarDetailsRecord."Book Status" := CarDetailsRecord."Book Status"::"Booked";
            CarDetailsRecord.Modify;

        end;
    end;

    var
        CarDetailsRecord: Record Car;
}
