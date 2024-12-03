table 60104 "Car Mileage"
{
    Caption = 'Car Mileage';
    DataClassification = ToBeClassified;
    LookupPageId = "Car Mileage Subform";

    fields
    {
        field(1; "Entry No."; Integer)
        {
            //Caption = 'Entry No.';
            DataClassification = ToBeClassified;
        }
        field(2; "Vehicle ID No.2"; Code[17])
        {
            Caption = 'Vehicle ID No.';
            DataClassification = ToBeClassified;
            TableRelation = Car."Vehicle ID No.";
            NotBlank = true;


            // trigger OnValidate()


        }
        field(3; "Date"; DateTime)
        {
            Caption = 'Date';
            DataClassification = ToBeClassified;
        }
        field(4; "Start Mileage"; Integer)
        {
            Caption = 'Start Mileage';
            DataClassification = ToBeClassified;
            BlankZero = true;
            MinValue = 0;

            trigger OnValidate()
            begin
                if Rec."End Mileage" >= Rec."Start Mileage" then
                    Rec."Difference" := Rec."End Mileage" - Rec."Start Mileage"
                else
                    Rec."Difference" := 0;
            end;
        }
        field(5; "End Mileage"; Integer)
        {
            Caption = 'End Mileage';
            DataClassification = ToBeClassified;
            BlankZero = true;
            MinValue = 0;

            trigger OnValidate()
            var
                ErrMsg: Label 'End mileage value must be greater than Start Mileage';
            begin
                if Rec."End Mileage" < Rec."Start Mileage" then
                    Error(ErrMsg)
                else
                    Rec."Difference" := Rec."End Mileage" - Rec."Start Mileage";
            end;
        }
        field(6; "Difference"; Integer)
        {
            Caption = 'Difference';
            DataClassification = ToBeClassified;
            BlankZero = true;
            MinValue = 0;
            Editable = false;
        }
        field(7; "User ID"; Code[50])
        {
            Caption = 'User ID';
            DataClassification = ToBeClassified;
            NotBlank = true;
            TableRelation = User."User Name";
            ValidateTableRelation = false;

            trigger OnValidate()
            var
                UserSelection: Codeunit "User Selection";
            begin
                UserSelection.ValidateUserName("User ID");
            end;
        }
    }

    keys
    {
        key(PK; "Entry No.", "Vehicle ID No.2")
        {
            Clustered = true;
        }
    }



}