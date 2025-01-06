page 60106 MainDriverDetailsPage
{
    ApplicationArea = All;
    Caption = 'Main Driver Details';
    PageType = Card;
    SourceTable = "Main Driver Details";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                }

                field(Surname; Rec.Surname)
                {
                    ApplicationArea = All;
                }

                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                }

                field("Post Code"; Rec."Post Code")
                {
                    ApplicationArea = All;
                }

                field("Phone Number"; Rec."Phone Number")
                {
                    ApplicationArea = All;
                }

                field("E-Mail"; Rec."E-Mail")
                {
                    ApplicationArea = All;
                }

                field("Insurance Options"; Rec."Insurance Options")
                {
                    ApplicationArea = All;
                }

                field("Driving License No."; Rec."Driving License No.")
                {
                    ApplicationArea = All;
                }

                field("Child seats"; Rec."Child seats")
                {
                    ApplicationArea = All;
                }

                field("Booster seats"; Rec."Booster seats")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
