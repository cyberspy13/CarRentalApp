page 60106 "Outsorced Employee"
{
    ApplicationArea = All;
    Caption = 'Outsorced Employee';
    PageType = List;
    SourceTable = "Outsourced Employee";
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "Outsorced Employee Card";


    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("First Name"; Rec."First Name")
                {
                }
                field("Last Name"; Rec."Last Name")
                {
                }
                field(Position; Rec.Position)
                {
                }
                field("Job Site"; Rec."Job Site")
                {
                }
                field("Arrival Date"; Rec."Arrival Date")
                {
                }
                field("Departure Date"; Rec."Departure Date")
                {
                }
            }
        }
    }
}
