SELECT *
FROM flight_2way NATURAL JOIN flight
where source = 'California' and destination = 'Texas' and departureDateTime > '2018-01-09 00:00:00' and departureDateTime < '2018-01-15 00:00:00'
and ID = flightID;