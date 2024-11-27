table 60101 "Car Brand Table"
{
    Caption = 'Car Brand Table';
    DataClassification = ToBeClassified;
    LookupPageId = "Car Brand Page";

    fields
    {
        field(2; Make; Text[20])
        {
            Caption = 'Make';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; Make)
        {
            Clustered = true;
        }
    }
}