SELECT firstName, lastName, timestamp
from log_agencySupportAgent
WHERE firstname = "Anne" and lastName = "Dawson" and onlineStatus = 1
and timestamp > "2018-01-01 00:00:00" and "2018-02-01 00:00:00";
