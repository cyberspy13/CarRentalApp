table 60108 "Employee Required Car Type"
{
    Caption = 'Employee Required Car Type';
    DataClassification = ToBeClassified;
    LookupPageId = "Car Type ";

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
    }
    keys
    {
        key(PK; "Code", Description)
        {
            Clustered = true;
        }
    }
}
