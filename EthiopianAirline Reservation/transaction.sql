use EthiopianAirlines;
--transaction
BEGIN TRANSACTION;
UPDATE Flight
SET departure_time = '2023-10-01 08:30:00'
WHERE flight_number = 'ET123';
COMMIT;