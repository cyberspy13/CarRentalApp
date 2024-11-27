table 60100 "Car Store Information"
{
    DataClassification = ToBeClassified;
    Caption = 'Car Information Table';

    fields
    {
        field(1; "Vehicle Identification No."; Code[17])
        {
            Caption = 'Vehicle Identification No.(VIN)';
            DataClassification = ToBeClassified;
            NotBlank = true;

            trigger OnValidate()
            var
                VINErrMessage: Label 'The lenght of the VIN no. should be no less then 17 characters';
                VIN: Code[17];
                Lenght: Integer;
            begin
                VIN := rec."Vehicle Identification No.";
                Lenght := StrLen(VIN);
                If Lenght <> 17 then
                    Error(VINErrMessage);
            end;
        }

        field(2; "Car Brand"; Text[20])
        {
            Caption = 'Car Brand';
            DataClassification = ToBeClassified;
            TableRelation = "Car Brand Table".Make;
        }
        field(3; "Car Model"; Text[30])
        {
            Caption = 'Car Model';
            DataClassification = ToBeClassified;
            TableRelation = "Car Model Table".Model;
        }

        field(4; Year; Integer)
        {
            Caption = 'Year';
            DataClassification = ToBeClassified;
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

        field(14; "Price"; Integer)
        {
            Caption = 'Price Per Day (£)';
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
        key(Key1; "Vehicle Identification No.", "Car Brand", "Car Model", "Model Variant")
        {
            Clustered = true;
        }
    }







}