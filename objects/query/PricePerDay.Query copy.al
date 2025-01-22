query 60101 "Price Per Day"
{
    Caption = 'Price Per Day';
    QueryType = Normal;
    Access = Public;
    QueryCategory = 'Outsourced Employee';
    elements
    {
  
        dataitem(Car; Car)
        {
            DataItemTableFilter = "Book Status" = const("Not Booked"),"Price per Day" = filter(<100);
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
  
