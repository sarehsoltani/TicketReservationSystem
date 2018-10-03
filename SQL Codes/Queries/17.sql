select firstName, lastName, username
from registered_customer
where timestamp  > '2018-01-00 00:00:00' and timestamp < '2018-02-00 00:00:00'