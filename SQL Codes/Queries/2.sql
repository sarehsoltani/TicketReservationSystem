SELECT firstName, lastName, username
from registered_customer natural join company_personnel_customer
where companyName = 'Fiji Airways'