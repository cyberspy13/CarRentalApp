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
            NotBlank = true;
        }

        field(2; "Last Name"; Text[50])
        {
            Caption = 'Last Name';
            DataClassification = ToBeClassified;
            NotBlank = true;
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
        }

        field(7; "Eligible Insurance Options"; Enum "Eligible Insurance Options")
        {
            Caption = 'Eligible Insurance Options';
            DataClassification = ToBeClassified;
            //Editable = false;
        }

        field(8; "Home Address"; Text[70])
        {
            Caption = 'Home Address';
            DataClassification = ToBeClassified;
        }

        field(9; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            DataClassification = ToBeClassified;
        }

        field(10; "Driving License No."; Code[15])
        {
            Caption = 'Driving License No.';
            DataClassification = ToBeClassified;
            NotBlank = true;

            trigger OnValidate()
            begin
                if StrLen("Driving License No.") <> 15 then begin
                    Error('The length of the Driving License No. should be no less then 15 characters.');
                end;
            end;
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
            NotBlank = true;
        }

        field(13; "Arrival Date"; Date)
        {
            Caption = 'Arrival Date';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }

        field(14; "Departure Date"; Date)
        {
            Caption = 'Departure Date';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }

        field(15; Age; Integer)
        {
            Caption = 'Employee Age';
            DataClassification = ToBeClassified;
            NotBlank = true;
            BlankZero = false;
        }

        field(16; Salary; Integer)
        {
            Caption = 'Salary (Per Annum)';
            DataClassification = ToBeClassified;
            NotBlank = true;
            BlankZero = false;
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
            NotBlank = true;
        }

        field(26; "Required Car Type"; Enum "Employee Required Car Type")
        {
            Caption = 'Required Car Type';
            DataClassification = ToBeClassified;
            NotBlank = true;
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
        key(Key1; "Driving License No.")
        {
            Clustered = true;
        }
        // key(Key2; "First Name", "Last Name")
        // {

        // }
    }

    trigger OnInsert()
    begin
        CheckMandatoryFields();
    end;

    trigger OnModify()
    begin
        CheckMandatoryFields();
    end;

    local procedure CheckMandatoryFields()
    var
        FirstNameErrorMessage: Label 'First Name can not be blank';
        LastNameErrorMessage: Label 'Last Name can not be blank';
        DateOfBirthErrorMessage: Label 'DOB can not be blank';
        ArrivalDateErrorMessage: Label 'Arrival date must be set';
        DepartureDateErrorMessage: Label 'Departure Date must be set';
        SalaryErrorMessage: Label 'Salary must be specified';
        RequiredTypeCarErrorMessage: Label 'Required Car Type field must have value';
        JobSiteErrorType: Label 'Job Site must be set';

    begin
        if Rec."First Name" = '' then begin
            Message(FirstNameErrorMessage);
        end;
        if (Rec."First Name" <> '') and (Rec."Last Name" = '') then
            Message(LastNameErrorMessage);

        if (Rec."Last Name" <> '') and ("Date of birth(DOB)" = 0D) then begin
            Message(DateOfBirthErrorMessage)
        end;
        if ("Date of birth(DOB)" <> 0D) and (Rec."Arrival Date" = 0D) then begin
            Message(ArrivalDateErrorMessage);
        end;
        if (Rec."Arrival Date" <> 0D) and (Rec."Departure Date" = 0D) then begin
            Message(DepartureDateErrorMessage);
        end;
        if (Rec."Departure Date" <> 0D) and (Rec.Salary = ' ') then begin
            Message(SalaryErrorMessage);
        end;
        if (Rec.Salary <> ' ') and (Rec."Required Car Type" = Rec."Required Car Type"::" ") then begin
            Message(RequiredTypeCarErrorMessage);
        end;
        if (Rec."Required Car Type" <> Rec."Required Car Type"::" ") and (Rec."Job Site" = Rec."Job Site"::" ") then begin
            Message(JobSiteErrorType);
        end;
    end;




}
