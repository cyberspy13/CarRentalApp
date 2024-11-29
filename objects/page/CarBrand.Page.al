page 60102 "Car Brand Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Car Brand Table";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Make; Rec.Make)
                {
                    ApplicationArea = All;
                }
            }
        }

    }

}