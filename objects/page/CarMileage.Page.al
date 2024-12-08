page 60104 "Car Mileage Subform"
{
    Caption = 'Mileage Log';
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Car Mileage";
    // Editable = false;
    InsertAllowed = true; // temporary
    ModifyAllowed = true; // temporary

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

                field(Date; Rec.Date)
                {
                    ApplicationArea = All;
                }

                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = All;
                }

                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                }

            }

        }

    }
}