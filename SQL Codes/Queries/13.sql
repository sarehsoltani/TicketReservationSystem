select c1.customerEmail as Passenger1, c2.customerEmail as Passenger2, iD, source, destination, departureDateTime
from customer_flight as c1, customer_flight as c2, flight
where c1.customerEmail = 'blixem@sbcglobal.net' and c2.customerEmail =  'carreras@msn.com' and  c1.flightID = ID  and  c2.flightID = ID and c1.flightID = c2.flightID


