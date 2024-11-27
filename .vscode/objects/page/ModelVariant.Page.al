page 60105 "Model Variant Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Model Variant Table";


    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Model Variant"; Rec."Model Variant")
                {
                    ApplicationArea = All;
                }
            }
        }

    }

}