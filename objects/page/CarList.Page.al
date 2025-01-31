page 60100 "Car List"
{
    Caption = 'Cars';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Car;
    Editable = false;
    CardPageId = "Car Card";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Vehicle ID No."; Rec."Vehicle ID No.")
                {
                    ApplicationArea = All;
                }

                field(Brand; Rec.Brand)
                {
                    ApplicationArea = All;
                }

                field(Model; Rec.Model)
                {
                    ApplicationArea = All;
                }

                field(Year; Rec.Year)
                {
                    ApplicationArea = ALl;
                }

                field("Drive Type"; Rec."Drive Type")
                {
                    ApplicationArea = All;
                }

                field(Colour; Rec.Colour)
                {
                    ApplicationArea = All;
                }

                field("Engine Size"; Rec."Engine Size")
                {
                    ApplicationArea = All;
                }

                field("Engine Power"; Rec."Engine Power")
                {
                    ApplicationArea = All;
                }

                field(Gearbox; Rec.Gearbox)
                {
                    ApplicationArea = All;
                }

                field("Body Type"; Rec."Body Type")
                {
                    ApplicationArea = All;
                }

                field("Fuel Type"; Rec."Fuel Type")
                {
                    ApplicationArea = All;
                }

                field(Mileage; Rec.Mileage)
                {
                    ApplicationArea = All;
                }

                field(Doors; Rec.Seats)
                {
                    ApplicationArea = All;
                }

                field(Price; Rec."Price per Day")
                {
                    ApplicationArea = All;
                }

                field("Car Insurance Policy"; Rec."Car Insurance Policy")
                {
                    ApplicationArea = All;
                }

                field("Car Location"; Rec."Car Location")
                {
                    ApplicationArea = All;
                }

                field("Required Employee Car Type"; Rec."Required Employee Car Type")
                {
                    ApplicationArea = All;
                }

                field("Book Status"; Rec."Book Status")
                {
                    ApplicationArea = All;
                }

                field("Car Renter"; Rec."Car Renter")
                {
                    ApplicationArea = All;
                }
            }
        }

        area(FactBoxes)
        {
            systempart(Links; Links)
            {
                ApplicationArea = All;
            }

            systempart(Notes; Notes)
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Assign Driver")
            {
                Caption = 'Assign Driver';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Image = AnalysisViewDimension;
                trigger OnAction()
                var
                    CarRecordListVar: Page "Car List";
                    CarRecordPageVar: Page "Car Card";
                    CarRecordVar: Record "Car";
                    DriverRecordVar: Record Driver;
                    NewFirstNameVar: Text[30];
                    NewSecondNameVar: Text[50];
                    ExistingFirstName: Text[30];
                    ExistingSecondName: Text[50];
                begin
                    DriverRecordVar.Get(SelectedDriveKey);
                    NewFirstNameVar := DriverRecordVar."First Name";
                    NewSecondNameVar := DriverRecordVar."Last Name";

                    if Rec."Car Renter" <> '' then begin
                        DriverRecordVar.Get(Rec."Car Renter");
                        ExistingFirstName := DriverRecordVar."First Name";
                        ExistingSecondName := DriverRecordVar."Last Name";
                        Message('The car is already assigned or with another Driver - %1 %2', ExistingFirstName, ExistingSecondName);
                    end else begin
                        Rec."Car Renter" := SelectedDriveKey;
                        Rec.Modify();
                        Message('The car is assigned to the Driver - %1 %2', NewFirstNameVar, NewSecondNameVar);
                    end;

                end;

            }
        }
    }
    var
        SelectedDriveKey: Code[15];

    procedure SetDriver(DrivingLicenseVar: Code[15])
    begin
        SelectedDriveKey := DrivingLicenseVar;
    end;
}