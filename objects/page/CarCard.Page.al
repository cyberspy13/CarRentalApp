page 60101 "Car Card"
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = Car;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Vehicle ID No."; Rec."Vehicle ID No.")
                {
                    ApplicationArea = ALl;
                }

                field(Brand; Rec.Brand)
                {
                    ApplicationArea = All;
                }

                field(Model; Rec.Model)
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

                field(Gearbox; Rec.Gearbox)
                {
                    ApplicationArea = All;
                }

                field(Year; Rec.Year)
                {
                    ApplicationArea = ALl;
                    ShowMandatory = true;
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

                field(Doors; Rec.Seats)
                {
                    ApplicationArea = All;
                }

                field(Mileage; Rec.Mileage)
                {
                    ApplicationArea = All;
                }

                field(Price; Rec."Price per Day")
                {
                    ApplicationArea = All;
                }

                field(Currency; Rec.Currency)
                {
                    ApplicationArea = All;
                }

                field("Car Insurance Policy"; Rec."Car Insurance Policy")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }

                field("Required Employee Car Type"; Rec."Required Employee Car Type")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }

                field("Car Location"; Rec."Car Location")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }

                field("Book Status"; Rec."Book Status")
                {
                    ApplicationArea = All;
                }

                field("Car Renter Driving License"; Rec."Car Renter Driving License")
                {
                    ApplicationArea = All;
                }

            }

            part("Car Mileage Subform"; "Car Mileage Subform")
            {
                ApplicationArea = Basic, Suite;
                SubPageLink = "Vehicle ID No." = field("Vehicle ID No.");
            }
            part(RentalHistory; RentalHistory)
            {
                ApplicationArea = Basic, Suite;
                SubPageLink = "Vehicle ID No." = field("Vehicle ID No.");
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
            action("Update Mileage")
            {
                Caption = 'Update Mileage';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Image = Find;

                trigger OnAction()
                var
                    MileageUpdateReport: Report "Mileage Update";
                begin
                    begin
                        MileageUpdateReport.SetDefaults(Rec."Vehicle ID No.");
                        MileageUpdateReport.Run();
                    end;
                end;
            }
            action("Book Car")
            {
                Caption = 'Book Car';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Image = BreakRulesOff;

                trigger OnAction()
                var
                    AssignDriverToVehicle: codeunit VehicleAssignment;
                begin
                    if (Rec."Car Renter Driving License" <> '') and (Rec."Book Status" = Rec."Book Status"::Booked) then begin
                        Message('Please update the current mileage and unbook the Driver.');
                    end else
                        AssignDriverToVehicle.InsertAssignment(Rec."Car Renter Driving License", Rec."Vehicle ID No.");


                end;



            }
            group(PrintSend)
            {
                Caption = 'Print/Send';
                action(PrintSendCarMileage_Promoted)
                {
                    ApplicationArea = All;
                    Caption = 'Print report';
                    Promoted = true;
                    PromotedCategory = Report;

                    trigger OnAction()
                    var
                        PrintCarReport: Report "Print Car Report";
                    begin
                        Rec.SetRange("Vehicle ID No.", Rec."Vehicle ID No.");
                        PrintCarReport.SetTableView(Rec);
                        PrintCarReport.Run();

                    end;
                }
            }
        }


    }

}
