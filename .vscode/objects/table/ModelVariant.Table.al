table 60103 "Model Variant Table"
{
    Caption = 'Model Variant';
    DataClassification = ToBeClassified;
    LookupPageId = "Model Variant Page";

    fields
    {
        field(1; "Model Variant"; Text[100])
        {
            Caption = 'Model Variant';
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; "Model Variant")
        {
            Clustered = true;
        }
    }


}