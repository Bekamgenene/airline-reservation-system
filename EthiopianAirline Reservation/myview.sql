CREATE VIEW PassengerFlights AS 
SELECT p.first_name, p.last_name, f.flight_number 
FROM Passengers p 
JOIN Reservations r ON p.passenger_id = r.passenger_id 
JOIN Flight f ON r.flight_id = f.flight_id;