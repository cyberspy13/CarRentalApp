page 60109 RentalHistory
{
    ApplicationArea = All;
    Caption = 'Rental History';
    PageType = ListPart;
    SourceTable = "Rental History";
    Editable = false;


    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';

                field("Driving License Number"; Rec."Driving License Number")
                {
                    ToolTip = 'Specifies the value of the Driving License Number field.', Comment = '%';
                }
                field("First Name"; Rec."First Name")
                {
                    ToolTip = 'Specifies the value of the First Name field.', Comment = '%';
                }
                field("Secod Name"; Rec."Second Name")
                {
                    ToolTip = 'Specifies the value of the Secod Name field.', Comment = '%';
                }
                field("Arr. Date"; Rec."Arr. Date")
                {
                    ToolTip = 'Specifies the value of the Arr. Date field.', Comment = '%';
                }
                field("Depart. Date"; Rec."Depart. Date")
                {
                    ToolTip = 'Specifies the value of the Depart. Date field.', Comment = '%';
                }
                field(Location; Rec.Location)
                {
                    ToolTip = 'Specifies the value of the Location field.', Comment = '%';
                }
                field(Price; Rec.Price)
                {
                    ToolTip = 'Specifies the value of the Price field.', Comment = '%';
                }
                field("Vehicle Id Number"; Rec."Vehicle ID No.")
                {
                    ToolTip = 'Specifies the value of the Vehicle Id Number field.', Comment = '%';
                }
                field("Car Brand"; Rec."Car Brand")
                {
                    ToolTip = 'Specifies the value of the Car Brand field.', Comment = '%';
                }
                field("Car Model "; Rec."Car Model")
                {
                    ToolTip = 'Specifies the value of the Car Model field.', Comment = '%';
                }
                field("Car Type"; Rec."Car Type")
                {
                    ToolTip = 'Specifies the value of the Car Type field.', Comment = '%';
                }
                field(Insurance; Rec.Insurance)
                {
                    ToolTip = 'Specifies the value of the Insurance field.', Comment = '%';
                }
                field("Rented Date"; Rec."Rented Date")
                {
                    ToolTip = 'Specifies the value of the Rented Date field.', Comment = '%';
                }
            }
        }
    }
}
