select customerEmail, source, destination,  pilotName, airplaneName, class,  departureDateTime
from   flight, customer_flight
where  flightID = ID and  customerEmail= 'blixem@sbcglobal.net' and  source =  'California' and  destination = 'Texas' and 
	(not exists(select *
						from flight_2way
						where  flightID = ID )) 
