report 60100 "Mileage Update"
{
    ApplicationArea = All;
    Caption = 'Mileage Update';
    UsageCategory = Tasks;
    ProcessingOnly = true;
    dataset
    {
        dataitem(CarMileage; "Car Mileage")
        {
            trigger OnPreDataItem()
            begin
            end;

            trigger OnAfterGetRecord()
            begin
            end;

            trigger OnPostDataItem()
            begin
                Message('Vehicle mileage record has been updated');
            end;
        }
    }
    requestpage
    {
        //SaveValues = true;
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(VehicleIdNo; VehicleIdNo)
                    {
                        Caption = 'Vehicle ID No.';
                        ApplicationArea = All;
                        NotBlank = true;
                        Editable = false;
                    }
                    field(StartMileage; StartMileage)
                    {
                        Caption = 'Start Mileage';
                        ApplicationArea = All;
                    }

                    field(EndMileage; EndMileage)
                    {
                        Caption = 'End Mileage';
                        ApplicationArea = All;
                    }

                    field(CurrentDate; CurrentDate)
                    {
                        Caption = 'Date';
                        ApplicationArea = All;
                    }
                    field(UserId; UserId)
                    {
                        Caption = 'User ID';
                        ApplicationArea = All;
                        NotBlank = true;
                        Editable = false;
                        //HideValue = true;
                    }
                    field(EntryNo; EntryNo)
                    {
                        Caption = 'Entry No.';
                        ApplicationArea = All;
                        //NotBlank = true;
                        Editable = true;
                        //HideValue = true;
                    }
                }
            }
        }
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
    var
        CarMileageRec: Record "Car Mileage";
    begin
        CurrentDate := Today();
        SetDefaultUserId();

        //CarMileageRec.Get(CarMileageRec."Vehicle ID No.").  

        CarMileageRec.Reset();
        CarMileageRec.SetCurrentKey("Entry No.");
        //GetEntryNoAndEndMileage();

        if CarMileageRec.FindLast() then begin
            EntryNo := CarMileageRec."Entry No." + 1;
            StartMileage := CarMileageRec."End Mileage";
        end else begin
            EntryNo := 1;
            StartMileage := 0;
        end;
    end;

    trigger OnPreReport()
    begin

    end;

    trigger OnPostReport()
    var

    begin

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

    procedure GetEntryNoAndEndMileage()
    begin
        if CarMileageRec.FindLast() then begin
            EntryNo := CarMileageRec."Entry No." + 1;
            StartMileage := CarMileageRec."End Mileage";
        end else begin
            EntryNo := 1;
            StartMileage := 0;
        end;
    end;










}
