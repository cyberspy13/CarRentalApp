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
            end;
        }

        field(2; Brand; Text[20])
        {
            Caption = 'Brand';
            DataClassification = ToBeClassified;
            TableRelation = "Car Brand Table".Make;
        }

        field(3; Model; Text[30])
        {
            Caption = 'Model';
            DataClassification = ToBeClassified;
            TableRelation = "Car Model Table".Model;
        }

        field(4; Year; Integer)
        {
            Caption = 'Year';
            DataClassification = ToBeClassified;
            BlankZero = true;
            MinValue = 0;
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
            DataClassification = ToBeClassified;
            Editable = false;
        }

        field(11; "Seats"; Enum "Seats")
        {
            Caption = 'Seats';
            DataClassification = ToBeClassified;
        }

        field(12; "Model Variant"; Text[100])
        {
            Caption = 'Model Variant';
            DataClassification = ToBeClassified;
            TableRelation = "Model Variant Table"."Model Variant";
        }

        field(13; "Drive Type"; enum "Drive Type")
        {
            Caption = 'Drive Type';
            DataClassification = ToBeClassified;
        }

        field(14; "Price per Day"; Integer)
        {
            Caption = 'Price per Day (£)';
            DataClassification = ToBeClassified;
        }

        field(15; "Engine Power"; Integer)
        {
            Caption = 'Engine Power (BHP)';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Vehicle ID No.")
        {
            Clustered = true;
        }
    }
}