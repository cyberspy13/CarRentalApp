report 60101 "Print Car Report WORD"
{
    Caption = 'Print Car Report WORD';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    WordLayout = 'Print Car Report.docx';
    DefaultLayout = Word;


    dataset
    {
        dataitem(Car; Car)
        {
            column(Vehicle_ID_No_; "Vehicle ID No.")
            {

            }

            column(Brand; Brand)
            {

            }

            column(Model; Model)
            {

            }

            column(Year; Year)
            {

            }

            column(Engine_Size; "Engine Size")
            {

            }

            column(Gearbox; Gearbox)
            {

            }

            column(Body_Type; "Body Type")
            {

            }

            column(Fuel_Type; "Fuel Type")
            {

            }

            column(Mileage; Mileage)
            {

            }
            column(Seats; Seats)
            {

            }

            column(Drive_Type; "Drive Type")
            {

            }

            column(Price_per_Day; "Price per Day")
            {

            }

            column(Engine_Power; "Engine Power")
            {

            }

            column(Colour; Colour)
            {

            }
        }
    }
}