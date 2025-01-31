page 60106 "Driver List"
{
    ApplicationArea = All;
    Caption = 'Drivers';
    PageType = List;
    SourceTable = "Driver";
    UsageCategory = Lists;
    Editable = false;
    QueryCategory = 'Outsourced Employee';
    CardPageId = "Driver Card";

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
    trigger OnAfterGetCurrRecord()
    var
    begin

    end;
}
