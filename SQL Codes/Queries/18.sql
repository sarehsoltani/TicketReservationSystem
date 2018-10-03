select customerEmail, source, destination, departureDateTime, airplaneName, class 
from customer_flight, flight
where flightID = ID and customerEmail = 'carreras@msn.com'
