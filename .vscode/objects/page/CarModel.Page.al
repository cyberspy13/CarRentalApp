page 60103 "Car Model Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Car Model Table";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Model; Rec.Model)
                {
                    ApplicationArea = All;
                }
            }
        }

    }



}