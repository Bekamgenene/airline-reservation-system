use EthiopianAirlines;
--Update the departure time of flight ET123 to 8:30 AM
UPDATE Flight
SET departure_time = '2023-10-01 08:30:00'
WHERE flight_number = 'ET123';
--
--Update the email address of passenger Kenenisa Beyane to 'Kenenisa.Beyane@yahoo.com'
UPDATE Passengers
SET email = 'Kenenisa.Beyane@yahoo.com'
WHERE passenger_id = 2;
--
--
--
--Insert a new passenger
INSERT INTO Passengers (first_name, last_name, email, phone_number)
VALUES ('Abeba', 'Tesfaye', 'Abeba.Tesfaye@gmail.com', '9012345678');
--
--Insert a new payment record
INSERT INTO Payment (amount, payment_date, passenger_id)
VALUES (300.00, '2023-10-02T12:00:00', 11);
--
--Insert a new payment record
INSERT INTO Payment (amount, payment_date, passenger_id)
VALUES (300.00, '2023-10-02T12:00:00', 11);
--
--Insert a new reservation
INSERT INTO Reservations (flight_id, passenger_id, payment_id, reservation_date)
VALUES (1, 11, 11, '2023-10-02T12:30:00');