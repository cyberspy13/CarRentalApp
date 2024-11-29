table 60102 "Car Model Table"
{
    Caption = 'Car Model Table';
    DataClassification = ToBeClassified;
    LookupPageId = "Car Model Page";

    fields
    {
        field(1; Model; Text[30])
        {
            Caption = 'Model';
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; Model)
        {
            Clustered = true;
        }
    }


}