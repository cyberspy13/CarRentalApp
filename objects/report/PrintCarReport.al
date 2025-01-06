report 60103 "Print Car Report"
{
    ApplicationArea = All;
    Caption = 'Print Car Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultRenderingLayout = MyRDLCLayout;
    //DefaultRenderingLayout = MyWORDLayout;

    dataset
    {
        dataitem(Car; Car)
        {
            column(BodyType; "Body Type")
            {
            }
            column(Brand; Brand)
            {
            }
            column(Colour; Colour)
            {
            }
            column(DriveType; "Drive Type")
            {
            }
            column(EnginePower; "Engine Power")
            {
            }
            column(EngineSize; "Engine Size")
            {
            }
            column(FuelType; "Fuel Type")
            {
            }
            column(Gearbox; Gearbox)
            {
            }
            column(Mileage; Mileage)
            {
            }
            column(Model; Model)
            {
            }
            column(PriceperDay; "Price per Day")
            {
            }
            column(Seats; Seats)
            {
            }
            column(VehicleIDNo; "Vehicle ID No.")
            {
            }
            column(Year; Year)
            {
            }
        }
    }
    rendering
    {
        layout(MyRDLCLayout)
        {
            Type = RDLC;
            Caption = 'Print Car Record RDLC';
            LayoutFile = 'Print Car Record.RDL';
        }
        layout(MyWORDLayout)
        {
            Type = Word;
            Caption = 'Print Car Report WORD';
            LayoutFile = 'Print Car Report.docx';
        }
    }
}
