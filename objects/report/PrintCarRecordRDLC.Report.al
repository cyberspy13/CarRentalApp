report 60102 "Print Car Record RDLC"
{

    Caption = 'Print Car Record RDLC';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = 'Print Car Record.RDL';
    DefaultLayout = RDLC;

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
            column(SystemCreatedAt; SystemCreatedAt)
            {
            }
            column(SystemCreatedBy; SystemCreatedBy)
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
}
