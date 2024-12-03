page 60104 "Car Mileage Subform"
{
    Caption = 'Subform for Mileage Log';
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Car Mileage";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Vehicle ID No."; Rec."Vehicle ID No.2")
                {
                    ApplicationArea = All;
                }
                field(Date; Rec.Date)
                {
                    ApplicationArea = All;
                }
                field("Start Mileage"; Rec."Start Mileage")
                {
                    ApplicationArea = All;
                }
                field("End Mileage"; Rec."End Mileage")
                {
                    ApplicationArea = All;
                }
                field(Difference; Rec.Difference)
                {
                    ApplicationArea = All;
                }
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = All;
                }

            }
        }

    }


}