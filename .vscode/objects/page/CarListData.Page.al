page 60100 "Car List Data"
{
    Caption = 'Car Rental List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Car Store Information";
    Editable = false;
    CardPageId = "Car Card";


    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(VIN; Rec."Vehicle Identification No.")
                {
                    ApplicationArea = All;
                }

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

                field(Price; Rec.Price)
                {
                    ApplicationArea = All;
                }


            }
        }
        area(Factboxes)
        {

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
}