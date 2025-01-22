query 60100 "Available Cars"
{
    Caption = 'Available Cars';
    QueryType = Normal;
    Access = Public;
    QueryCategory = 'Outsourced Employee';
    elements
    {
        dataitem(Car; Car)
        {
            DataItemTableFilter = "Book Status" = const("Not Booked");
            column(BookStatus; "Book Status")
            {
            }
             column(Brand; Brand)
            {
            }
              column(Model; Model)
            {
            }
              column(CarLocation; "Car Location")
            {
            }
            column(Body_Type;"Body Type")
            {
            }
            column(Gearbox;Gearbox)
            {
            }
            column(Year;Year)
            {
            }
            column(Price_per_Day;"Price per Day")
            {
            }
            column(CarInsurancePolicy; "Car Insurance Policy")
            {
            }
            column(RequiredEmployeeCarType; "Required Employee Car Type")
            {
            }
        }
    }       
}
  
