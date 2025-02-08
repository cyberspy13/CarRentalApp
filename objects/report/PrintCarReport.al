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
            Column(CarRenterDrivingLicense; "Car Renter Driving License")
            {
            }
        }
        dataitem(Driver; Driver)
        {
            // DataItemLink = "Driving License No." = field("Car Renter Driving License");

            DataItemLink = "Driving License No." = field("Car Renter Driving License");
            DataItemLinkReference = Car;

            column(DrivingLicenseNo; "Driving License No.")
            {
            }
            column(First_Name; "First Name")
            {
            }
            column(Last_Name; "Last Name")
            {
            }
            column(Date_of_birth_DOB_; "Date of birth(DOB)")
            {
            }
            column(Position; Position)
            {
            }
            column(E_Mail; "E-Mail")
            {
            }
            column(Address; Address)
            {
            }
            column(Address_2; "Address 2")
            {
            }
            column(Country_Region_Code; "Country/Region Code")
            {
            }
            column(City; City)
            {
            }
            column(County; County)
            {
            }
            column(Post_Code; "Post Code")
            {
            }
            column(UK_Mobile_Phone_No_; "UK Mobile Phone No.")
            {
            }
            column(Required_Car_Type; "Required Car Type")
            {
            }
            column(Job_Site; "Job Site")
            {
            }
            column(Insurance; Insurance)
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
