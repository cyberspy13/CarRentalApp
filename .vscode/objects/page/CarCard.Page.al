page 60101 "Car Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Car Store Information";

    layout
    {
        area(Content)
        {
            group("Basic Car information")
            {
                field("Car Brand"; Rec."Car Brand")
                {
                    ApplicationArea = All;
                }

                field("Car Model"; Rec."Car Model")
                {
                    ApplicationArea = All;
                }

                field("Model Variant"; Rec."Model Variant")
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

            }
            group("Additional Car Specification")
            {
                field(VIN; Rec."Vehicle Identification No.")
                {
                    ApplicationArea = ALl;
                }

                field(Gearbox; Rec.Gearbox)
                {
                    ApplicationArea = All;
                }

                field(Year; Rec.Year)
                {
                    ApplicationArea = ALl;
                }

                field(Colour; Rec.Colour)
                {
                    ApplicationArea = All;
                }

                field("Engine Size"; Rec."Engine Size")
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

                field(Price; Rec.Price)
                {
                    ApplicationArea = All;
                }

            }
        }
        area(FactBoxes)
        {
            part("Attached Documents"; "Document Attachment Factbox")
            {
                Caption = 'Attachments';
                ApplicationArea = All;
                // SubPageLink = "No" = const(Database::"Car Store Information"),
                //               "No." = field("Vehicle Identification No.");

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}