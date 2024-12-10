report 60100 "Mileage Update"
{
    ApplicationArea = All;
    Caption = 'Mileage Update';
    UsageCategory = Tasks;
    ProcessingOnly = true;
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(CurrentDate; CurrentDate)
                    {
                        Caption = 'Date';
                        ApplicationArea = All;
                    }

                    field(StartMileage; StartMileage)
                    {
                        Caption = 'Start Mileage';
                        ApplicationArea = All;
                        Editable = false;
                    }

                    field(EndMileage; EndMileage)
                    {
                        Caption = 'End Mileage';
                        ApplicationArea = All;
                    }

                    field(UserId; UserId)
                    {
                        Caption = 'User ID';
                        ApplicationArea = All;
                        NotBlank = true;
                        Editable = false;
                    }
                }
            }
        }
        trigger OnOpenPage()
        begin
            CarMileageRec.SetRange("Vehicle ID No.", VehicleIdNo);
            if CarMileageRec.FindLast() then begin
                StartMileage := CarMileageRec."End Mileage";
            end else begin
                StartMileage := 0;
            end;
        end;

    }
    var
        CarCardRec: record Car;
        CarMileageRec: record "Car Mileage";
        VehicleIdNo: Code[17];
        CurrentDate: Date;
        StartMileage: Integer;
        EndMileage: Integer;
        UserId: code[50];
        EntryNo: Integer;

    trigger OnInitReport()
    begin
        CurrentDate := Today();
        SetDefaultUserId();

    end;

    trigger OnPreReport()
    begin
    end;

    trigger OnPostReport()
    begin
        CarMileageRec.Reset();
        //CarMileageRec.DeleteAll();
        //exit;
        if CarMileageRec.FindLast() then begin
            EntryNo := CarMileageRec."Entry No." + 1;
        end else
            EntryNo := 1;

        CarMileageRec.Init();

        CarMileageRec."Vehicle ID No." := VehicleIdNo;
        CarMileageRec."Start Mileage" := StartMileage;
        CarMileageRec."End Mileage" := EndMileage;
        CarMileageRec.Date := CurrentDate;
        CarMileageRec."Entry No." := EntryNo;
        CarMileageRec."User ID" := UserId;

        CarMileageRec.CheckMileage();
        CarMileageRec.Insert();


    end;

    procedure SetDefaults(VinNo: code[17])
    begin
        VehicleIdNo := VinNo;
    end;

    procedure SetDefaultUserId()
    begin
        UserId := UserId();
    end;













}
