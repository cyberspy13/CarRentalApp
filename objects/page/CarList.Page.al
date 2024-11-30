page 60100 "Car List"
{
    Caption = 'Car List';
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
}