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

                 field("Driving License No."; Rec."Driving License No.")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the Driving License of the employee. This field is mandatory.';
                    ShowMandatory = true;
                }

                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the First Name of the employee. This field is mandatory.';
                    ShowMandatory = true;
                }

                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the Last Name of the employee. This field is mandatory.';
                    ShowMandatory = true;
                }

                field("Date of birth(DOB)"; Rec."Date of birth(DOB)")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the Date Of Birth (DOB) of the employee. This field is mandatory.';
                    ShowMandatory = true;
                }

                field(Age; Rec.Age)
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the Age of the employee.';
                }

                field(Position; Rec.Position)
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the Position of the employee.';
                }

                field("Arrival Date"; Rec."Arrival Date")
                {
                    ApplicationArea = ALl;
                     ToolTip = 'Enter the Arrival Date of the employee. This field is mandatory.';
                    ShowMandatory = true;
                }

                field("Departure Date"; Rec."Departure Date")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the Departure Date of the employee. This field is mandatory.';
                    ShowMandatory = true;
                }

                field("LinkedIn Profile"; Rec."LinkedIn Profile")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the LinkedIn Profile of the employee.';
                }

                field("E-Mail"; Rec."E-Mail")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the E-mail of the employee.';
                }

                field(Salary; Rec.Salary)
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the Salary of the employee.';
                    ShowMandatory = true;
                }
            }
            group("Home Address & Contact")
            {
                Caption = 'Home Address & Contact';

                field("Home Address"; Rec."Home Address")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the Home Address of the employee.';
                }

                field("Home Address 2"; Rec."Home Address 2")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the Home Address 2 of the employee.';
                }

                field("Home Country/Region Code"; Rec."Home Country/Region Code")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the Home COuntry/Region code of the employee.';
                }

                field("Home City"; Rec."Home City")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the Home City of the employee.';
                }

                field("Home County"; Rec."Home County")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the Home County of the employee.';
                }

                field("Home Post Code"; Rec."Home Post Code")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the Home Post Code of the employee.';
                }

                field("Home Mobile Phone No."; Rec."Home Mobile Phone No.")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the Home Mobile Phone No. of the employee.';
                }
            }
            group("UK Address & Contact")
            {

                field("Address"; Rec.Address)
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the Address of the employee.';
                }

                field("Address 2"; Rec."Address 2")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the Address 2 of the employee.';
                }

                field("Country/Region Code"; Rec."Country/Region Code")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the Country/Region Code of the employee.';
                }

                field(City; Rec.City)
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the City of the employee.';
                }

                field(County; Rec.County)
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the County of the employee.';
                }

                field("Post Code"; Rec."Post Code")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the Post Code of the employee.';
                }

                field("UK Mobile Phone No."; Rec."UK Mobile Phone No.")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the UK Mobile Phone No. of the employee.';
                }
            }
            group("Car Renting Details")
            {
                field("Required Car Type"; Rec."Required Car Type")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the Required Car Type. This field is mandatory.';
                    ShowMandatory = true;
                }

                field("Job Site"; Rec."Job Site")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the Job Site. This field is mandatory.';
                    ShowMandatory = true;
                }
               
                field("Eligible Insurance Options"; Rec."Eligible Insurance Options")
                {
                    ApplicationArea = ALl;
                    ToolTip = 'Enter the Eligible Insurance Options. This field is mandatory.';
                    ShowMandatory = true;
                }
            }
        }
    } 
    actions
    {
        area(Processing)
        {
            action("Find Car")
            {
                ApplicationArea = All;
                Caption = 'Find Car';
                Promoted = true;
                PromotedCategory = Process;
                Image = BookingsLogo;

                trigger OnAction()
                begin

                end;
            }
        }

    }
}

       


