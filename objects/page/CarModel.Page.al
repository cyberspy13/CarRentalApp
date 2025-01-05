page 60103 "Car Models"
{
    Caption = 'Car Models';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Car Model";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}