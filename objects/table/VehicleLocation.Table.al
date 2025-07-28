table 60105 "Vehicle Location"
{
    Caption = 'Vehicle Location';
    DataClassification = ToBeClassified;
    LookupPageId = "Vehicle Location";

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Description; Text[30])
        {
            Caption = 'Description';
        }
    }
    keys
    {
        key(PK; "Code", "Description")
        {
            Clustered = true;
        }
    }
}
