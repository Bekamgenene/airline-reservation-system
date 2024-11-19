-- Airline Table
CREATE TABLE Airline (
    airline_id INT Identity(1,1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL
);

-- Airplanes Table
CREATE TABLE Airplanes (
    airplane_id INT Identity(1,1) PRIMARY KEY,
    model VARCHAR(100) NOT NULL,
    capacity INT NOT NULL,
    airline_id INT,
    FOREIGN KEY (airline_id) REFERENCES Airline(airline_id)
);

-- Flight Table
CREATE TABLE Flight (
    flight_id INT Identity(1,1) PRIMARY KEY,
    flight_number VARCHAR(10) NOT NULL,
    departure_time DATETIME NOT NULL,
    arrival_time DATETIME NOT NULL,
    airplane_id INT,
    FOREIGN KEY (airplane_id) REFERENCES Airplanes(airplane_id)
);

-- Passengers Table
CREATE TABLE Passengers (
    passenger_id INT Identity(1,1) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(15)
);

-- Payment Table
CREATE TABLE Payment (
    payment_id INT Identity(1,1) PRIMARY KEY,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date DATETIME NOT NULL,
    passenger_id INT,
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id)
);

-- Reservations Table
CREATE TABLE Reservations (
    reservation_id INT Identity(1,1) PRIMARY KEY,
    flight_id INT,
    passenger_id INT,
    payment_id INT,
    reservation_date DATETIME NOT NULL,
    FOREIGN KEY (flight_id) REFERENCES Flight(flight_id),
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id),
    FOREIGN KEY (payment_id) REFERENCES Payment(payment_id)
);