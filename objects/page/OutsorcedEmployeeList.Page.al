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
                    ApplicationArea = All;
                }

                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                }

                field(Position; Rec.Position)
                {
                    ApplicationArea = All;
                }
                field("Job Site"; Rec."Job Site")
                {
                    ApplicationArea = All;
                }
                field("Arrival Date"; Rec."Arrival Date")
                {
                    ApplicationArea = All;
                }
                field("Departure Date"; Rec."Departure Date")
                {
                    ApplicationArea = All;
                }

                field("Driving License No."; Rec."Driving License No.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
