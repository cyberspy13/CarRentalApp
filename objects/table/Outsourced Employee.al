table 60103 "Outsourced Employee"
{
    Caption = 'Outsourced Employee';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "First Name"; Text[30])
        {
            Caption = 'First Name';
            DataClassification = ToBeClassified;
        }

        field(2; "Last Name"; Text[50])
        {
            Caption = 'Last Name';
            DataClassification = ToBeClassified;
        }

        field(3; "E-Mail"; Text[30])
        {
            Caption = 'E-Mail';
            DataClassification = ToBeClassified;
        }

        field(4; "Home Mobile Phone No."; Integer)
        {
            Caption = 'Home Mobile Phone No.';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }

        field(5; "Home Post Code"; Code[20])
        {
            Caption = 'Home Post Code';
            DataClassification = ToBeClassified;
        }

        field(6; "Address 2"; Text[70])
        {
            Caption = 'Address 2';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }

        field(7; "Eligible Insurance Options"; Enum "Eligible Insurance Options")
        {
            Caption = 'Eligible Insurance Options';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }

        field(8; "Home Address"; Text[70])
        {
            Caption = 'Home Address';
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

        field(11; "LinkedIn Profile"; Text[50])
        {
            Caption = 'LinkedIn Profile';
            DataClassification = ToBeClassified;
        }

        field(12; "Date of birth(DOB)"; Date)
        {
            Caption = 'Date of Birth';
            DataClassification = ToBeClassified;
        }

        field(13; "Arrival Date"; Date)
        {
            Caption = 'Arrival Date';
            DataClassification = ToBeClassified;
        }

        field(14; "Departure Date"; Date)
        {
            Caption = 'Departure Date';
            DataClassification = ToBeClassified;
        }

        field(15; Age; Integer)
        {
            Caption = 'Employee Age';
            DataClassification = ToBeClassified;
        }

        field(16; Salary; Integer)
        {
            Caption = 'Salary (Per Annum)';
            DataClassification = ToBeClassified;
        }

        field(17; "Home Address 2"; Text[70])
        {
            Caption = 'Home Address 2';
            DataClassification = ToBeClassified;
        }

        field(18; "Home Country/Region Code"; Code[20])
        {
            Caption = 'Home Country/Region Code';
            DataClassification = ToBeClassified;
        }

        field(19; "Country/Region Code"; Code[20])
        {
            Caption = 'Country/Region Code';
            DataClassification = ToBeClassified;
        }

        field(20; "Home City"; Text[20])
        {
            Caption = 'Home City';
            DataClassification = ToBeClassified;
        }

        field(21; "Home County"; Text[20])
        {
            Caption = 'Home County';
            DataClassification = ToBeClassified;
        }

        field(22; City; Text[20])
        {
            caption = 'City';
            DataClassification = ToBeClassified;
        }

        field(23; County; Text[20])
        {
            Caption = 'County';
            DataClassification = ToBeClassified;
        }

        field(24; "UK Mobile Phone No."; Integer)
        {
            Caption = 'UK Mobile Phone No.';
            DataClassification = ToBeClassified;
        }

        field(25; "Job Site"; Enum "JobSite")
        {
            Caption = 'Job Site';
            DataClassification = ToBeClassified;
        }

        field(26; "Required Car Type"; Enum "Employee Required Car Type")
        {
            Caption = 'Required Car Type';
            DataClassification = ToBeClassified;
        }

        field(27; Position; Text[20])
        {
            Caption = 'Position';
            DataClassification = ToBeClassified;
        }

        field(28; Address; Text[50])
        {
            Caption = 'Address';
            DataClassification = ToBeClassified;
        }

    }
    keys
    {
        key(PK; "First Name", "Last Name")
        {
            Clustered = true;
        }
    }


}
