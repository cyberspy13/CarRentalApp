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
            // DataItemTableView = sorting("Vehicle ID No.") where("Vehicle ID No." = const(''));
            // RequestFilterFields = "Vehicle ID No.";

            trigger OnPreDataItem()
            begin

            end;

            trigger OnAfterGetRecord()
            begin


            end;

            trigger OnPostDataItem()

            begin
                EntryNo += 1;
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
                        NotBlank = true;
                        Editable = false;
                        //HideValue = true;

                    }
                }
            }



        }

    }
    //We need to get VIN No. from the Car Mileage table
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
    var
        LastEntryNoRecord: Record "Car Mileage";
    begin

        if LastEntryNoRecord.FindLast() then
            EntryNo := LastEntryNoRecord."Entry No." + 1
        else
            EntryNo := 1;

    end;

    trigger OnPostReport()
    var

    begin

        CarMileageRec.GetNewVehicleIdNo(VehicleIdNo);

        // if CarMileageRec.Get(CarMileageRec."Vehicle ID No.") then begin
        //     CarMileageRec."Vehicle ID No." := VehicleIdNo;
        // end;
        // CarMileageRec.Modify();
        // //EntryNo += 1;


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
