table 60100 Car
{
    Caption = 'Car';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Vehicle ID No."; Code[17])
        {
            Caption = 'Vehicle ID No.';
            DataClassification = ToBeClassified;
            NotBlank = true;

            trigger OnValidate()
            var
                VINErrMessage: Label 'The length of the Vehicle ID No. should be no less then 17 characters.';
            begin
                if StrLen("Vehicle ID No.") <> 17 then
                    Error(VINErrMessage);
                "Book Status" := "Book Status"::"Not Booked";
            end;

        }
        field(2; Brand; Code[20])
        {
            Caption = 'Brand';
            DataClassification = ToBeClassified;
            TableRelation = "Car Brand".Code;
        }

        field(3; Model; Code[20])
        {
            Caption = 'Model';
            DataClassification = ToBeClassified;
            TableRelation = "Car Model".Code where("Brand Code" = field(Brand));
        }

        field(4; Year; Integer)
        {
            Caption = 'Year';
            DataClassification = ToBeClassified;
            BlankZero = true;
            MinValue = 0;

            trigger OnVAlidate()
            var
                FutureYearMsg: Label 'The year is in the future. Please enter a valid past or current.';
                CurrentYear: Integer;
                PastYearMsg: Label 'The year is too far in history to be valid for modern cars. Please enter a valid car production year.';
                PastNotValidYear: Integer;
            begin
                CurrentYear := Date2DMY(Today(), 3);
                if Rec.Year > CurrentYear then begin
                    Error(FutureYearMsg);
                end;
                PastNotValidYear := 1980;
                if Rec.Year < PastNotValidYear then begin
                    Error(PastYearMsg);
                end
            end;
        }

        field(5; Colour; Text[20])
        {
            Caption = 'Colour';
            DataClassification = ToBeClassified;
        }

        field(6; "Engine Size"; Decimal)
        {
            Caption = 'Engine Size';
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 1;
        }

        field(7; "Gearbox"; Enum "Gearbox")
        {
            Caption = 'Gearbox';
            DataClassification = ToBeClassified;
        }

        field(8; "Body Type"; Enum "Body Type")
        {
            Caption = 'Body Type';
            DataClassification = ToBeClassified;
        }

        field(9; "Fuel Type"; Enum "Fuel Type")
        {
            Caption = 'Fuel Type';
            DataClassification = ToBeClassified;
        }

        field(10; "Mileage"; Integer)
        {
            Caption = 'Mileage';
            Editable = false;
            BlankZero = true;
            MinValue = 0;
            TableRelation = "Car Mileage";
            FieldClass = FlowField;
            CalcFormula = max("Car Mileage"."End Mileage" where("Vehicle ID No." = field("Vehicle ID No.")));

        }

        field(11; "Seats"; Integer)
        {
            Caption = 'Seats';
            DataClassification = ToBeClassified;
        }

        field(13; "Drive Type"; enum "Drive Type")
        {
            Caption = 'Drive Type';
            DataClassification = ToBeClassified;
        }

        field(14; "Price per Day"; Integer)
        {
            Caption = 'Price per Day';
            DataClassification = ToBeClassified;
        }

        field(15; "Engine Power"; Integer)
        {
            Caption = 'Engine Power (BHP)';
            DataClassification = ToBeClassified;
            BlankZero = true;
            MinValue = 0;
        }

        field(16; Currency; Code[10])
        {
            Caption = 'Currency';
            DataClassification = ToBeClassified;
            TableRelation = Currency.Code;
            NotBlank = true;
        }

        field(17; "Book Status"; Enum BookedStatus)
        {
            Caption = 'Book Status';
            DataClassification = ToBeClassified;
            Editable = true;
        }

        field(18; "Car Insurance Policy"; Enum "Eligible Insurance Options")
        {
            Caption = 'Insurance Policy';
            DataClassification = ToBeClassified;
            NotBlank = true;

            trigger OnValidate()
            var
                DvlaErrMessage: Label 'You cannot select DVLA option.';
            begin
                if "Car Insurance Policy" = Rec."Car Insurance Policy"::DVLA then begin
                    Error(DvlaErrMessage);
                end;
            end;
        }

        field(19; "Required Employee Car Type"; Enum "Employee Required Car Type")
        {
            Caption = 'Car Type';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }

        field(20; "Car Location"; Text[30])
        {
            Caption = 'Vehicle Location';
            DataClassification = ToBeClassified;
            tableRelation = "Vehicle Location".Description;
            NotBlank = true;
        }
        field(21; "Car Renter Driving License"; Code[17])
        {
            Caption = 'Driver Driving License No.';
            DataClassification = ToBeClassified;
            //TableRelation = "Driver"."Driving License No.";
        }
        field(22; "Driver Car License"; Code[17])
        {
            Caption = 'Driver Car License No.';
            DataClassification = ToBeClassified;
            //TableRelation = "Driver"."Driving License No.";
        }
    }
    keys
    {
        key(PK; "Vehicle ID No.")
        {
            Clustered = true;
        }
    }
    procedure FindVehicle(Driver: record Driver)
    var
        CarRecordList: Page "Car List";
        CarRecordPage: Page "Car Card";
        CarRecord: Record "Car";
        BlankCarRenter: Text;

    begin
        BlankCarRenter := '';

        CarRecord.SetRange("Required Employee Car Type", Driver."Required Car Type");
        CarRecord.SetRange("Car Insurance Policy", Driver."Eligible Insurance Options");
        CarRecord.SetRange("Car Location", Driver."Job Site");
        //CarRecord.SetRange("Car Renter Driving License", BlankCarRenter); // need to think about this part  - how can i implement the logic without missing record
        CarRecord.SetRange("Book Status", "Book Status"::"Not Booked");

        CarRecordList.SetDriver(Driver."Driving License No.");
        CarRecordList.SetTableView(CarRecord);
        CarRecordList.RunModal();
    end;

    procedure BookStatusProcedure();
    var
        PassVinValue: Record "Driver";
    begin
        if Rec."Book Status" = "Book Status"::"Not Booked" then begin
            Rec."Book Status" := "Book Status"::"Booked";
            Rec.Modify;

        end;
    end;
}