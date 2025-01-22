codeunit 60100 "Car Find Codeunit"
{
    //TableNo = "Outsourced Employee";

    trigger OnRun()
    begin
        ExecuteMyQuery()
    end;

    local procedure ExecuteMyQuery()
    var
        FindCarQuery: Query "Available Cars";
        DrivingLicenseVar: Code[15];
        BookStatus: Enum BookedStatus;
        CarIusrancePolicy: Enum "Eligible Insurance Options";
        CarLocation: Enum "JobSite";
        RequiredEmployeeCarType: Enum "Employee Required Car Type";
        Brand: Code[20];
        Model: Code[20];
        Vehicle_ID_No_: Code[20];
        OutsourcedEmployeeVar: Record "Outsourced Employee";
    begin
        if OutsourcedEmployeeVar.FindFirst() then begin
            DrivingLicenseVar := OutsourcedEmployeeVar."Driving License No.";
            //FindCarQuery.SetFilter(FindCarQuery.Driving_License_No_, DrivingLicenseVar);
            FindCarQuery.Open();

            while FindCarQuery.Read() do begin
                BookStatus := FindCarQuery.BookStatus;
                CarIusrancePolicy := FindCarQuery.CarInsurancePolicy;
                CarLocation := FindCarQuery.CarLocation;
                RequiredEmployeeCarType := FindCarQuery.RequiredEmployeeCarType;
                Brand := FindCarQuery.Brand;
                Model := FindCarQuery.Model;
                // Vehicle_ID_No_ := FindCarQuery.Vehicle_ID_No_;
            end;
            //FindCarQuery.Close();
        end else begin
            Error('No Outsourced Employee has been found.');
        end;

    end;



}
