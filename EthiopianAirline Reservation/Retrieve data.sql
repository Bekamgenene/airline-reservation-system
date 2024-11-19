use EthiopianAirlines;
--
--Retrieve all passengers
SELECT * FROM Passengers;
--
--Retrieve all flights with departure time after 9:00 AM
SELECT * FROM Flight WHERE departure_time > '2023-10-01 09:00:00';
--
--Retrieve passenger names and their corresponding flight numbers using join statement
SELECT p.first_name, p.last_name, f.flight_number
FROM Passengers p
JOIN Reservations r ON p.passenger_id = r.passenger_id
JOIN Flight f ON r.flight_id = f.flight_id;
--
--Retrieve passenger names and their corresponding flight numbers
SELECT p.first_name, p.last_name, f.flight_number
FROM Passengers p
JOIN Reservations r ON p.passenger_id = r.passenger_id
JOIN Flight f ON r.flight_id = f.flight_id;
--
--Retrieve airline name and its corresponding airplane models
SELECT a.name, ap.model
FROM Airline a
JOIN Airplanes ap ON a.airline_id = ap.airline_id;
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
--Retrieve passengers who paid more than the average payment amount
SELECT *
FROM Passengers p
WHERE p.passenger_id IN (
  SELECT passenger_id
  FROM Payment
  WHERE amount > (SELECT AVG(amount) FROM Payment)
);
