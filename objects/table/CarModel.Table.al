table 60102 "Car Model"
{
    Caption = 'Car Model ';
    DataClassification = ToBeClassified;
    LookupPageId = "Car Models";

    fields
    {
        field(1; Code; Code[20])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
        }

        field(2; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
    }
}