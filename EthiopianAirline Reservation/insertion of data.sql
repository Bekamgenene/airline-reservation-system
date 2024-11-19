use EthiopianAirlines;
-- Insert Airlines
INSERT INTO Airline (name, country) VALUES ('Ethiopian Airlines', 'Ethiopia');

-- Insert Airplanes
INSERT INTO Airplanes (model, capacity, airline_id) VALUES 
('Boeing 737', 160, 1),
('Airbus A350', 300, 1);

-- Insert Flights
INSERT INTO Flight (flight_number, departure_time, arrival_time, airplane_id) VALUES 
('ET123', '2023-10-01 08:00:00', '2023-10-01 12:00:00', 1),
('ET456', '2023-10-02 09:00:00', '2023-10-02 13:00:00', 2);

-- Insert Passengers
INSERT INTO Passengers (first_name, last_name, email, phone_number) VALUES 
('Bekam', 'Genene', 'Bekam.Genene@gmail.com', '1234567890'),
('kenenisa', 'Beyane', 'Kenenisa.Beyane@gmail.com', '0987654321'),
('Yabsira', 'Goitom', 'Yabsira.Goitom@gmail.com', '1122334455'),
('Endreyas', 'Eshetu', 'Endreyas.Eshetu@gmail.com', '2233445566'),
('Hundaol', 'Banti', 'Hundaol.Banti@gmail.com', '3344556677'),
('Hawi', 'Tolas', 'Hawi.Tolas@gmail.com', '4455667788'),
('Meti', 'Waqayo', 'Meti.Waqayo@gmail.com', '5566778899'),
('Tsega', 'Bona', 'Tsega.Bona@gmail.com', '6677889900'),
('Naol', 'Fayisa', 'Naol.Fayisa@gmail.com', '7788990011'),
('Hagos', 'Kinfu', 'Hagos.Kinfu@gmail.com', '8899001122');
-- Insert Payments
INSERT INTO Payment (amount, payment_date, passenger_id) VALUES 
(200.00, '2023-10-01T12:00:00', 1),
(150.00, '2023-10-01T12:00:00', 2),
(300.00, '2023-10-01T12:00:00', 3),
(250.00, '2023-10-01T12:00:00', 4),
(180.00, '2023-10-01T12:00:00', 5),
(220.00, '2023-10-01T12:00:00', 6),
(210.00, '2023-10-01T12:00:00', 7),
(190.00, '2023-10-01T12:00:00', 8),
(240.00, '2023-10-01T12:00:00', 9),
(260.00, '2023-10-01T12:00:00', 10);

-- Insert Reservations
INSERT INTO Reservations (flight_id, passenger_id, payment_id, reservation_date) VALUES 
(1, 1, 1, '2023-10-01T12:30:00'),
(1, 2, 2, '2023-10-01T12:30:00'),
(2, 3, 3, '2023-10-01T12:30:00'),
(2, 4, 4, '2023-10-01T12:30:00'),
(1, 5, 5, '2023-10-01T12:30:00'),
(1, 6, 6, '2023-10-01T12:30:00'),
(2, 7, 7, '2023-10-01T12:30:00'),
(2, 8, 8, '2023-10-01T12:30:00'),
(1, 9, 9, '2023-10-01T12:30:00'),
(2, 10, 10, '2023-10-01T12:30:00');

