/**Scenario: Ethiopian Airlines is a major airline operating in Ethiopia. 
The airline has two airplanes, a Boeing 737 and an Airbus A350, which operate on two different routes. 
The Boeing 737 operates on the ET123 route, which departs from Addis Ababa at 8:00 AM and arrives at 12:00 PM. 
The Airbus A350 operates on the ET456 route, which departs from Addis Ababa at 9:00 AM and arrives at 1:00 PM.**/
USE EthiopianAirlines;
--Retrieve all passengers who booked a ticket on ET123
SELECT * FROM Passengers p
JOIN Reservations r ON p.passenger_id = r.passenger_id
WHERE r.flight_id = 1;
--
--Retrieve the total payment amount for each flight
SELECT f.flight_number, SUM(p.amount) AS total_payment
FROM Flight f
JOIN Reservations r ON f.flight_id = r.flight_id
JOIN Payment p ON r.payment_id = p.payment_id
GROUP BY f.flight_number;
--
--Retrieve the average capacity of all airplanes
SELECT AVG(capacity) AS average_capacity
FROM Airplanes;
--
--Retrieve passenger names, flight numbers, and airplane models
SELECT p.first_name, p.last_name, f.flight_number, ap.model
FROM Passengers p
JOIN Reservations r ON p.passenger_id = r.passenger_id
JOIN Flight f ON r.flight_id = f.flight_id
JOIN Airplanes ap ON f.airplane_id = ap.airplane_id;