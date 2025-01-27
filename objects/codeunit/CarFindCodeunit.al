codeunit 60100 "Book Car Codeunit"
{
    trigger OnRun()
    begin
        //BookCarProcedure();
    end;

    procedure BookCarProcedure(OutsourcedEmployee: Record "Outsourced Employee")
    var
        CarRecord: Record "Car";
        CarRecordPage: Page "Car List";
    begin

        CarRecord.SetRange("Required Employee Car Type", OutsourcedEmployee."Required Car Type");
        CarRecord.SetRange("Car Location", OutsourcedEmployee."Job Site");
        CarRecord.SetRange("Car Insurance Policy", OutsourcedEmployee."Eligible Insurance Options");



        CarRecordPage.SetTableView(CarRecord);
        CarRecordPage.LookupMode := true;
        if CarRecordPage.RunModal() = Action::LookupOK then begin
            CarRecordPage.GetRecord(CarRecord);
            //OutsourcedEmployee."Book Status" := OutsourcedEmployee."Book Status"::Booked;
            OutsourcedEmployee.Modify();
        end

    end;














}
