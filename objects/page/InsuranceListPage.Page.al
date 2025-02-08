page 60110 "Insurance List Page"
{
    ApplicationArea = All;
    Caption = 'Insurance List';
    PageType = List;
    SourceTable = "Eligible Insurance Options";
    UsageCategory = Lists;


    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
            }
        }
    }
}
