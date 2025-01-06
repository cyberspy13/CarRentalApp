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

            }

            part("Car Mileage Subform"; "Car Mileage Subform")
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
                Image = Track;

                trigger OnAction()
                var
                    MileageUpdateReport: Report "Mileage Update";
                begin
                    MileageUpdateReport.SetDefaults(Rec."Vehicle ID No.");
                    MileageUpdateReport.Run();
                end;

            }
            action("Main Driver Details")
            {
                Caption = 'Main driver Details';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Image = ViewDetails;

                trigger OnAction()
                var
                    MainDriverDetails: Page MainDriverDetailsPage;
                begin
                    MainDriverDetails.Run();
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
                        //PrintCarReportWORD: report "Print Car Report WORD";
                        //PrintCarReportRDLC: report "Print Car Record RDLC";
                        PrintCarReport: Report "Print Car Report";
                    begin
                        Rec.SetRange("Vehicle ID No.", Rec."Vehicle ID No.");
                        PrintCarReport.SetTableView(Rec);
                        PrintCarReport.Run();
                        //PrintCarReportWORD.SetTableView(Rec);
                        //PrintCarReportRDLC.SetTableView(Rec);
                        //PrintCarReportWORD.Run();
                        //PrintCarReportRDLC.Run();
                    end;

                }
            }
        }
    }
}
