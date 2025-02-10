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
            column(Currency; Currency)
            {
            }
        }
        dataitem(Driver; Driver)
        {
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
        dataitem("Car Mileage"; "Car Mileage")
        {
            DataItemLink = "Car Mileage Vehicle ID No." = field("Vehicle ID No.");
            DataItemLinkReference = Car;

            column(End_Mileage; "End Mileage")
            {
            }
            trigger OnAfterGetRecord()
            var
                LastEntryRecord: Record "Car Mileage";
                CarRecord: Record Car;
            begin
                LastEntryRecord.SetRange("Car Mileage Vehicle ID No.", Car."Vehicle ID No.");

                if LastEntryRecord.FindLast() then begin
                    "End Mileage" := LastEntryRecord."End Mileage";
                end;

            end;
        }
        dataitem("Rental History"; "Rental History")
        {
            DataItemLink = "Driving License Number" = field("Car Renter Driving License");
            DataItemLinkReference = Car;

            column(Rented_Date; "Rented Date")
            {
            }
            trigger OnAfterGetRecord()
            var
                LastRentedDateEntry: Record "Rental History";
            begin
                LastRentedDateEntry.SetRange("Driving License Number", Car."Car Renter Driving License");

                if LastRentedDateEntry.FindLast()
                then begin
                    "Rented Date" := LastRentedDateEntry."Rented Date";
                end;
            end;
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
