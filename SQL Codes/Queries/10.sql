select customerEmail, flightID, source, destination, departureDateTime
from flight, customer_flight
where flightID = ID and customerEmail = 'facet@me.com ' and  paymentType = 'credit'
