CREATE TABLE room_registry
(
    Room_ID varchar(5) primary key,
    Room_Type varchar(255) NOT NULL,
    Room_Price decimal NOT NULL,
    Room_Capacity int NOT NULL,
    Room_Status bool NOT NULL,
    CONSTRAINT check_room CHECK (Room_Type='Delux')
);

CREATE TABLE food_registry
(
    Food_ID int(4) primary key,
    Food_Name varchar(255),
    Food_Price decimal NOT NULL,
    Food_Type varchar(7),
    CONSTRAINT check_food CHECK (Food_Type='VEG' OR Food_Type='NON VEG')
);

CREATE TABLE gnrl_service
(
    GNRL_Service_ID int(3) primary key,
    GNRL_Service_Price decimal NOT NULL,
    GNRL_Service_Description varchar(255) NOT NULL
);

CREATE TABLE room_service
(
    Room_Service_ID int(3) primary key,
    Room_Service_Price decimal NOT NULL,
    Room_Service_Description varchar(255) NOT NULL
);

CREATE TABLE client_registry
(
    Client_ID int primary key,
    First_Name varchar(255) NOT NULL,
    Middle_Name varchar(255),
    Last_Name varchar(255),
    Gender char NOT NULL,
    DOB date,
    Contact int NOT NULL UNIQUE,
    Email_ID varchar(255) NOT NULL,
    CONSTRAINT check_client CHECK (Gender='M' OR Gender='F' OR Gender='O')
);

CREATE TABLE client_address
(
    Client_ID int primary key,
    Building_OR_House_Name varchar(255),
    Street_Name varchar(255),
    Neighborhood varchar(255),
    City varchar(255) NOT NULL,
    Zip_Code int NOT NULL,
    Additional_Details varchar(255) NOT NULL,
    Country varchar(255) NOT NULL
);

CREATE TABLE client_idproof
(
    Client_ID int primary key,
    Visa_Number int NOT NULL UNIQUE,
    Visa_Type varchar(100) NOT NULL,
    Visa_Values varchar(100) NOT NULL
);

CREATE TABLE billing_registry
(
    Client_ID int primary key,
    Billing_ID int UNIQUE NOT NULL
);

/*
    This will be the billing table template of each customer.
    The billing registry table will have the client id and there billing id
*/

CREATE TABLE billing_template
(
    Billing_CODE varchar(10) primary key,
    Billing_Category varchar(255) NOT NULL,
    Billing_Description varchar(255),
    Billing_Entry_Time varchar(255) NOT NULL,
    Billing_Qty decimal NOT NULL default 1.0,
    Billing_Estimated_Price decimal NOT NULL,
    Billing_Tax decimal NOT NULL,
    Billing_Total_Price decimal NOT NULL,
    CONSTRAINT check_billing CHECK (Billing_Category='FOOD' OR Billing_Category='ROOM SERVICE' OR Billing_Category='GENERAL' AND Billing_Qty > 0)
);

CREATE TABLE payment_registry
(
    Payment_ID int PRIMARY KEY,
    Booking_ID int UNIQUE NOT NULL,
    Payment_Category varchar(11) NOT NULL,
    Payment_Time varchar(6) NOT NULL,
    Payment_Date date NOT NULL,
    Payment_Mode varchar(20) NOT NULL,
    Payment_Reference varchar(255),
    Payment_AMT varchar(255),
    Payment_Status varchar(8) NOT NULL,
    CONSTRAINT check_payment CHECK (
        (
            Payment_Status='Received' OR
            Payment_Status='Pending'
        ) AND
        (
            Payment_Mode='Cash' OR
            Payment_Mode='Cheque' OR
            Payment_Mode='Debit Card' OR
            Payment_Mode='Credit Card' OR
            Payment_Mode='Net Transfer' OR
            Payment_Mode='UPI'
        ) AND
        (
            Payment_Category='Advanced' OR
            Payment_Category='Settlement'
        )
    )
);

CREATE TABLE booking_registry
(
    Booking_ID int PRIMARY KEY,
    Client_ID int NOT NULL,
    Check_In date NOT NULL,
    Check_Out date NOT NULL,
    Days int,
    Children int NOT NULL default 0,
    Adults int NOT NULL default 1,
    Channel varchar(20) NOT NULL default 'Walk In Direct',
    Plan_Code varchar(2) NOT NULL,
    Company_Name varchar(255),
    CONSTRAINT check_booking CHECK (
        (
            Channel='MMT' OR
            Channel='GOEBEBO' OR
            Channel='BOOKING.COM' OR
            Channel='XPEDIA' OR
            Channel='Walk In Direct' OR
            Channel='Others'
        ) AND (
            Plan_Code='EP' OR
            Plan_Code='AP' OR
            Plan_Code='CP'
        )
    )
);

CREATE TABLE booking_room_registry (
    Booking_ID int PRIMARY KEY,
    Room_ID int NOT NULL
)
