table 60104 "Car Mileage"
{
    Caption = 'Car Mileage';
    DataClassification = ToBeClassified;
    LookupPageId = "Car Mileage Subform";


    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = ToBeClassified;
            Editable = false;

        }

        field(2; "Vehicle ID No."; Code[17])
        {
            Caption = 'Vehicle ID No.';
            DataClassification = ToBeClassified;
        }

        field(3; "Date"; Date)
        {
            Caption = 'Date';
            DataClassification = SystemMetadata;
            Editable = true;
        }

        field(4; "Start Mileage"; Integer)
        {
            Caption = 'Start Mileage';
            DataClassification = ToBeClassified;
            BlankZero = true;
            MinValue = 0;

            trigger OnValidate()
            begin
                CheckMileage();
            end;
        }

        field(5; "End Mileage"; Integer)
        {
            Caption = 'End Mileage';
            DataClassification = ToBeClassified;
            BlankZero = true;
            MinValue = 0;

            trigger OnValidate()
            begin
                CheckMileage();
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
        }
    }
    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;

        }

        key(Key2; "Vehicle ID No.")
        {

        }
    }
    procedure CheckMileage()
    var
        ErrMsg: Label 'End mileage value must be greater than Start Mileage';
    begin
        if Rec."End Mileage" >= Rec."Start Mileage" then
            Rec."Difference" := Rec."End Mileage" - Rec."Start Mileage"
        else
            Rec."Difference" := 0;
        if Rec."End Mileage" < Rec."Start Mileage" then
            Error(ErrMsg)
        else
            Rec."Difference" := Rec."End Mileage" - Rec."Start Mileage";
    end;

}