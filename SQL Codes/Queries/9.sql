SELECT distinct company_personnel_customer.companyName,
 log_customer_flight.paymentAmount, log_customer_flight.timestamp
FROM log_customer_flight, flight, customer_flight, company_personnel_customer, Company
WHERE log_customer_flight.timestamp > NOW() - INTERVAL 20 DAY
and flight.ID = customer_flight.flightID and customer_flight.customerEmail = email
AND  company_personnel_customer.companyName = name