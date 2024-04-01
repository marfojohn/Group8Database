CREATE TABLE Airlines (
    Airline_ID INT PRIMARY KEY,
    Regional BOOLEAN,
    Charter BOOLEAN,
    Airline_Name VARCHAR(255)
);

CREATE TABLE Flights (
    Flight_Number INT PRIMARY KEY,
    Day_of_week VARCHAR(20),
    Departure_Time TIME,
    Arrival_Time TIME,
    Stops INT,
    Origin VARCHAR(100),
    Destination VARCHAR(100),
    Airline_ID INT,
    FOREIGN KEY (Airline_ID) REFERENCES Airlines(Airline_ID)
);

CREATE TABLE Passenger (
    Age INT,
    F_Name VARCHAR(50),
    L_Name VARCHAR(50),
    Address VARCHAR(255),
    Gender CHAR(1),
    P_ID INT PRIMARY KEY,
    Phone_Number VARCHAR(15),
    Flight_Number INT,
    FOREIGN KEY (Flight_Number) REFERENCES Flights(Flight_Number)
);

CREATE TABLE Travel_Agency (
    Name VARCHAR(255) PRIMARY KEY,
    Contact_Person VARCHAR(100),
    Phone_Number VARCHAR(15),
    Date DATE,
    Flight_Number INT,
    FOREIGN KEY (Flight_Number) REFERENCES Flights(Flight_Number)
);
