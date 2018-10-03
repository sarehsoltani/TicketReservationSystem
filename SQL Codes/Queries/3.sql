SELECT companyName, SUM(paymentAmount)
from customer_flight, flight, Company
where flightID = ID and companyName = name and (paymentDate > '2018-01-09' and paymentDate < '2018-01-11')
group by companyName;