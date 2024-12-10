page 60105 "Car Mileage Log"
{
    ApplicationArea = All;
    Caption = 'Car Mileage Log';
    PageType = List;
    SourceTable = "Car Mileage";
    UsageCategory = Lists;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ToolTip = 'Specifies the value of the Entry No. field.', Comment = '%';
                }
                field("Vehicle ID No."; Rec."Vehicle ID No.")
                {
                    ToolTip = 'Specifies the value of the Vehicle ID No. field.', Comment = '%';
                }
                field("Start Mileage"; Rec."Start Mileage")
                {
                    ToolTip = 'Specifies the value of the Start Mileage field.', Comment = '%';
                }
                field("End Mileage"; Rec."End Mileage")
                {
                    ToolTip = 'Specifies the value of the End Mileage field.', Comment = '%';
                }
                field(Difference; Rec.Difference)
                {
                    ToolTip = 'Specifies the value of the Difference field.', Comment = '%';
                }
                field("Date"; Rec."Date")
                {
                    ToolTip = 'Specifies the value of the Date field.', Comment = '%';
                }
                field("User ID"; Rec."User ID")
                {
                    ToolTip = 'Specifies the value of the User ID field.', Comment = '%';
                }

            }
        }
    }
}
