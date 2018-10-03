select log_Company.name
FROM log_Company
WHERE action = 'DELETE' and timestamp > "2018-01-01 00:00:00" and timestamp < "2018-02-01 00:00:00"