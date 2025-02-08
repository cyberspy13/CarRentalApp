table 60107 "Eligible Insurance Options"
{
    Caption = 'Eligible Insurance Options';
    DataClassification = ToBeClassified;
    LookupPageId = "Insurance List Page";

    fields
    {
        field(1; "Code"; Code[10])
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
        key(PK; "Code", Description)
        {
            Clustered = true;
        }
    }

    procedure GetValidInsurance(DriverRecordVar: Record Driver; NewUpdatedInsuranceValue: Text[30])
    var
        DriverRecord: Record Driver;
        NewUpdatedInsuranceValueVar: Text[30];
        PremiumErrMessage: Label 'Premium insurance option is not alllowed for this employee. Please check/amend the person salary.';
        DvlaErrMessage: Label 'Please check the employee vision with DVLA.';
        AgeValidationError: Label 'Please amend your age to select DVLA';
        EmployeeCheckAge: Label 'We cannot insure a person who is less than 18 years old.';
        AgeCondition: Boolean;
        SalaryCondition: Boolean;
        InsuranceConditionPremium: Boolean;
        InsuranceConditionStandard: Boolean;
        InsuranceConditionDvla: Boolean;
        RetirementAgeCondition: Boolean;
    begin
        AgeLimit := 18;
        RetirementAge := 70;
        NewUpdatedInsuranceValueVar := NewUpdatedInsuranceValue;

        DriverRecord.Get(DriverRecordVar."Driving License No.");

        InsuranceConditionPremium := NewUpdatedInsuranceValueVar = 'PREMIUM';
        AgeCondition := (DriverRecord.Age > AgeLimit) and (DriverRecord.Age < 70);
        SalaryCondition := DriverRecord.Salary <= 100000;


        if AgeCondition and SalaryCondition and InsuranceConditionPremium
         then begin
            Error(PremiumErrMessage);
        end;
        InsuranceConditionStandard := NewUpdatedInsuranceValueVar = 'STANDARD';
        RetirementAgeCondition := DriverRecord.Age > RetirementAge;

        If RetirementAgeCondition and InsuranceConditionStandard
        then begin
            Error(DvlaErrMessage);
        end else begin
            if RetirementAgeCondition and InsuranceConditionPremium then begin
                Error(DvlaErrMessage);
            end;
        end;

        if DriverRecord.Age < AgeLimit then begin
            Error(EmployeeCheckAge);
        end;
    end;

    var
        AgeLimit: Integer;
        RetirementAge: Integer;
}
