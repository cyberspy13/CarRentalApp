table 60103 "Main Driver Details"
{
    Caption = 'Main Driver Details';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "First Name"; Text[30])
        {
            Caption = 'First Name';
            DataClassification = ToBeClassified;
        }

        field(2; Surname; Text[50])
        {
            Caption = 'Surname';
            DataClassification = ToBeClassified;
        }

        field(3; "E-Mail"; Text[30])
        {
            Caption = 'E-Mail';
            DataClassification = ToBeClassified;
        }

        field(4; "Phone Number"; Integer)
        {
            Caption = 'Phone Number';
            DataClassification = ToBeClassified;
            NotBlank = true;
            //trigger OnValidate
        }

        field(5; "Child seats"; Integer)
        {
            Caption = 'Child seats';
            DataClassification = ToBeClassified;
            MinValue = 0;
        }

        field(6; "Booster seats"; Integer)
        {
            Caption = 'Booster seats';
            DataClassification = ToBeClassified;
            MinValue = 0;
        }
        field(7; "Insurance Options"; Enum "Insurance Options")
        {
            Caption = 'Insurance Options';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }

        field(8; Address; Text[70])
        {
            Caption = 'Address';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }

        field(9; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }

        field(10; "Driving License No."; Code[20])
        {
            Caption = 'Driving License No.';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
    }
    keys
    {
        key(PK; "First Name", Surname, "E-Mail")
        {
            Clustered = true;
        }
    }


}
