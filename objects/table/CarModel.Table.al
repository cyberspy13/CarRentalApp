table 60102 "Car Model"
{
    Caption = 'Car Model ';
    DataClassification = ToBeClassified;
    LookupPageId = "Car Models";

    fields
    {
        field(1; "Brand Code"; Code[20])
        {
            Caption = 'Brand Code';
            DataClassification = ToBeClassified;
            TableRelation = "Car Brand".Code;
        }

        field(2; Code; Code[20])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
        }

        field(3; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(Key1; "Brand Code", Code)
        {
            Clustered = true;
        }
    }
}