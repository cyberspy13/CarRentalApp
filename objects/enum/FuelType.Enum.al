enum 60100 "Fuel Type"
{
    Caption = 'Fuel Type';
    Extensible = true;

    value(0; " ")
    {
        Caption = ' ';
    }
    value(1; Petrol)
    {
        Caption = 'Petrol';
    }
    value(2; Diesel)
    {
        Caption = 'Diesel';
    }
    value(3; Hybrid)
    {
        Caption = 'Hybrid';
    }
    value(4; "Fully Electric")
    {
        Caption = 'Fully Electric';
    }
}