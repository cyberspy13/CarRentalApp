table 60106 "Rental History"
{
    Caption = 'Rental History';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Driving License Number"; Code[15])
        {
            Caption = 'Driving License Number';
            DataClassification = ToBeClassified;
        }
        field(2; "First Name"; Text[30])
        {
            Caption = 'First Name';

        }
        field(3; "Second Name"; Text[50])
        {
            Caption = 'Second Name';

        }
        field(4; "Arr. Date"; Date)
        {
            Caption = 'Arrival Date';

        }
        field(5; "Depart. Date"; Date)
        {
            Caption = 'Departure Date';
        }
        field(6; "Car Type"; Text[50])
        {
            Caption = 'Car Type';

        }
        field(7; Location; Text[30])
        {
            Caption = 'Location';

        }
        field(8; Insurance; Text[30])
        {
            Caption = 'Insurance';

        }
        field(9; "Vehicle ID No."; Code[17])
        {
            Caption = 'Vehicle ID No.';
            DataClassification = ToBeClassified;
        }
        field(10; "Car Brand"; Code[20])
        {
            Caption = 'Car Brand';

        }
        field(11; "Car Model"; Code[20])
        {
            Caption = 'Car Model ';

        }
        field(12; Price; Integer)
        {
            Caption = 'Price';
            TableRelation = car."Price per Day";
        }
        field(13; Status; Enum BookedStatus)
        {
            Caption = 'Status';
        }
        field(14; "Rented Date"; Date)
        {
            Caption = 'Rented Date';
        }
        field(15; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = ToBeClassified;
            Editable = false;

        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }

    }
}
