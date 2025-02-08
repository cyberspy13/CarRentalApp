table 60103 "Driver"
{
    Caption = 'Drivers';
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

        field(4; "Home Mobile Phone No."; Text[30])
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

        field(7; Insurance; Text[30])
        {
            Caption = 'Eligible Insurance Options';
            DataClassification = ToBeClassified;
            Editable = true;
            TableRelation = "Eligible Insurance Options".Description;
            trigger OnValidate()
            var
                InsuranceTable: record "Eligible Insurance Options";
                NewInsuranceValue: Text[30];
            begin
                NewInsuranceValue := UpperCase(Insurance);
                InsuranceTable.GetValidInsurance(Rec, NewInsuranceValue);
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
                    Error(DrivingLicenseNoErrorMessage)
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
            BlankZero = true;
            Editable = false;
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

        field(24; "UK Mobile Phone No."; Text[30])
        {
            Caption = 'UK Mobile Phone No.';
            DataClassification = ToBeClassified;
        }

        field(25; "Job Site"; Text[30])
        {
            Caption = 'Job Site';
            DataClassification = ToBeClassified;
            TableRelation = "Vehicle Location".Description;
            NotBlank = true;
        }

        field(26; "Required Car Type"; Text[50])
        {
            Caption = 'Required Car Type';
            DataClassification = ToBeClassified;
            TableRelation = "Employee Required Car Type".Description;
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

        field(29; "Rented Status"; Enum BookedStatus)
        {
            Caption = 'Rented Status';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Car."Book Status" where("Car Renter Driving License" = field("Driving License No.")));
        }

        field(30; "Same Address"; Boolean)
        {
            Caption = 'Same address';

            trigger OnValidate()
            begin
                if not "Same Address" = false then begin
                    Rec.Address := Rec."Home Address";
                    Rec."Address 2" := Rec."Home Address 2";
                    Rec."Country/Region Code" := Rec."Home Country/Region Code";
                    Rec.City := Rec."Home City";
                    Rec.County := Rec."Home City";
                    Rec."Post Code" := Rec."Home Post Code";
                    Rec."UK Mobile Phone No." := Rec."Home Mobile Phone No."

                end;


            end;
        }

    }
    keys
    {
        key(Key1; "Driving License No.")
        {
            Clustered = true;
        }

    }

}

