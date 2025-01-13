page 60107 "Outsorced Employee Card"
{
    ApplicationArea = All;
    PageType = Card;
    SourceTable = "Outsourced Employee";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = ALl;
                }

                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = ALl;
                }

                field("Date of birth(DOB)"; Rec."Date of birth(DOB)")
                {
                    ApplicationArea = ALl;
                }

                field(Age; Rec.Age)
                {
                    ApplicationArea = ALl;
                }

                field(Position; Rec.Position)
                {
                    ApplicationArea = ALl;
                }

                field("Arrival Date"; Rec."Arrival Date")
                {
                    ApplicationArea = ALl;
                }

                field("Departure Date"; Rec."Departure Date")
                {
                    ApplicationArea = ALl;
                }

                field("LinkedIn Profile"; Rec."LinkedIn Profile")
                {
                    ApplicationArea = ALl;
                }

                field("E-Mail"; Rec."E-Mail")
                {
                    ApplicationArea = ALl;
                }

                field(Salary; Rec.Salary)
                {
                    ApplicationArea = ALl;
                }
            }
            group("Home Address & Contact")
            {
                Caption = 'Home Address & Contact';

                field("Home Address"; Rec."Home Address")
                {
                    ApplicationArea = ALl;
                }

                field("Home Address 2"; Rec."Home Address 2")
                {
                    ApplicationArea = ALl;
                }

                field("Home Country/Region Code"; Rec."Home Country/Region Code")
                {
                    ApplicationArea = ALl;
                }

                field("Home City"; Rec."Home City")
                {
                    ApplicationArea = ALl;
                }

                field("Home County"; Rec."Home County")
                {
                    ApplicationArea = ALl;
                }

                field("Home Post Code"; Rec."Home Post Code")
                {
                    ApplicationArea = ALl;
                }

                field("Home Mobile Phone No."; Rec."Home Mobile Phone No.")
                {
                    ApplicationArea = ALl;
                }
            }
            group("UK Address & Contact")
            {

                field("Address"; Rec.Address)
                {
                    ApplicationArea = ALl;
                }
                field("Address 2"; Rec."Address 2")
                {
                    ApplicationArea = ALl;
                }

                field("Country/Region Code"; Rec."Country/Region Code")
                {
                    ApplicationArea = ALl;
                }

                field(City; Rec.City)
                {
                    ApplicationArea = ALl;
                }

                field(County; Rec.County)
                {
                    ApplicationArea = ALl;
                }

                field("Post Code"; Rec."Post Code")
                {
                    ApplicationArea = ALl;
                }

                field("UK Mobile Phone No."; Rec."UK Mobile Phone No.")
                {
                    ApplicationArea = ALl;
                }
            }
            group("Car Renting Details")
            {
                field("Required Car Type"; Rec."Required Car Type")
                {
                    ApplicationArea = ALl;
                }

                field("Job Site"; Rec."Job Site")
                {
                    ApplicationArea = ALl;
                }

                field("Driving License No."; Rec."Driving License No.")
                {
                    ApplicationArea = ALl;
                }

                field("Eligible Insurance Options"; Rec."Eligible Insurance Options")
                {
                    ApplicationArea = ALl;
                }

            }
        }
    }
}
