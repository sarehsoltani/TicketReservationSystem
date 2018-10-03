select companyName, ID, source, destination, departureDateTime, class
from  customer_flight, flight 
where flightID = ID  and  companyName='Regional Express' and class='business'
