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
            Editable = true;
            trigger OnValidate()
            var

                PremiumErrMessage: Label 'Premium insurance option is not alllowed for this employee. Please check/amend the person salary.';
                DvlaErrMessage: Label 'Please check the employee vision with DVLA.';
            begin

                if (Age > 18) and (Age < 70) and (Rec.Salary < 100000) and ("Eligible Insurance Options" = "Eligible Insurance Options"::PREMIUM)
                 then begin
                    Error(PremiumErrMessage);
                end;

                If (Rec.Age > 70) then begin
                    Error(DvlaErrMessage);
                end;
            end;
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
            var
                DrivingLicenseNoErrorMessage: Label 'The length of the Driving License No. should be exactly 15 characters.';
            begin
                if StrLen("Driving License No.") <> 15 then begin
                    Message(DrivingLicenseNoErrorMessage)
                end;
            end;
        }

        field(11; "LinkedIn Profile"; Text[100])
        {
            Caption = 'LinkedIn Profile';
            DataClassification = ToBeClassified;
        }

        field(12; "Date of birth(DOB)"; Date)
        {
            Caption = 'Date of Birth';
            DataClassification = ToBeClassified;
            NotBlank = true;

            trigger OnValidate()
            var
                TodaysDate: Date;
                YearsDifference: Integer;
                AgeInYears: Integer;
            begin

                TodaysDate := Today();
                if Rec."Date of birth(DOB)" <> 0D then begin
                    YearsDifference := Date2DMY(TodaysDate, 3) - Date2DMY(Rec."Date of birth(DOB)", 3); // Calculate year difference
                                                                                                        //Date2DMY - This is an integer that specifies which part of the date you want to extract:
                                                                                                        //1 for Day
                                                                                                        //2 for Month
                                                                                                        //3 for Year

                    // Check if the current date is before the birthday in this year
                    if (Date2DMY(TodaysDate, 1) < Date2DMY(Rec."Date of birth(DOB)", 1)) or
                       ((Date2DMY(TodaysDate, 1) = Date2DMY(Rec."Date of birth(DOB)", 1)) and
                        (Date2DMY(TodaysDate, 2) < Date2DMY(Rec."Date of birth(DOB)", 2))) then begin
                        AgeInYears := YearsDifference - 1; // Adjust if today's date hasn't reached birthday yet this year
                        Rec.Age := AgeInYears;
                    end else begin
                        AgeInYears := YearsDifference; // No adjustment needed if birthday has passed this year
                        Rec.Age := AgeInYears;
                    end;

                end;
            end;
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
            //NotBlank = true;
            BlankZero = true;
            Editable = true;

            trigger OnValidate()
            begin
                CheckAge();
            end;
        }

        field(16; Salary; Integer)
        {
            Caption = 'Salary (Per Annum)';
            DataClassification = ToBeClassified;
            NotBlank = true;
            BlankZero = true;
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

    }
    trigger OnInsert()
    begin
        Rec.TestField("First Name");
        Rec.TestField("Last Name");
        Rec.TestField("Date of birth(DOB)");
        Rec.TestField("Arrival Date");
        Rec.TestField("Departure Date");
        Rec.TestField(Salary);
        Rec.TestField("Required Car Type");
        Rec.TestField("Job Site");
        CheckAge();
    end;

    local procedure CheckAge()
    begin

        if (Age > 18) and (Age < 70) and (Salary > 50000) and (Salary < 100000) then begin
            "Eligible Insurance Options" := "Eligible Insurance Options"::STANDART;
        end;
        if (Age > 18) and (Age < 70) and (Rec.Salary > 100000) then begin
            "Eligible Insurance Options" := "Eligible Insurance Options"::PREMIUM;
        end;
        if (Rec.Age < 70) then begin
            "Eligible Insurance Options" := "Eligible Insurance Options"::DVLA;
        end;
    end;
}

