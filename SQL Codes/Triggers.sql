drop trigger if exists table_update_Branch;
CREATE TRIGGER table_update_Branch
after UPDATE ON Branch FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "Branch";

--***************************************
drop trigger if exists table_update_Branch_Address;
CREATE TRIGGER table_update_Branch_Address
after UPDATE ON Branch_Address FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "Branch_Address";

--***************************************
drop trigger if exists table_update_Branch_PhoneNumber;
CREATE TRIGGER table_update_Branch_PhoneNumber
after UPDATE ON Branch_PhoneNumber FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "Branch_PhoneNumber";

--***************************************
drop trigger if exists table_update_Company;
CREATE TRIGGER table_update_Company
after UPDATE ON Company FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "Company";

--***************************************
drop trigger if exists table_update_agencySpecialist;
CREATE TRIGGER table_update_agencySpecialist
after UPDATE ON agencySpecialist FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "agencySpecialist";

--***************************************
drop trigger if exists table_update_agencySpecialist_Address;
CREATE TRIGGER table_update_agencySpecialist_Address
after UPDATE ON agencySpecialist_Address FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "agencySpecialist_Address";

--***************************************
drop trigger if exists table_update_agencySpecialist_PhoneNumber;
CREATE TRIGGER table_update_agencySpecialist_PhoneNumber
after UPDATE ON agencySpecialist_PhoneNumber FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "agencySpecialist_PhoneNumber";

--***************************************
drop trigger if exists table_update_agencySupportAgent;
CREATE TRIGGER table_update_agencySupportAgent
after UPDATE ON agencySupportAgent FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "agencySupportAgent";

--***************************************
drop trigger if exists table_update_checkout_payment;
CREATE TRIGGER table_update_checkout_payment
after UPDATE ON checkout_payment FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "checkout_payment";

--***************************************
drop trigger if exists table_update_companyAgent;
CREATE TRIGGER table_update_companyAgent
after UPDATE ON companyAgent FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "companyAgent";

--***************************************
drop trigger if exists table_update_companyAgent_Address;
CREATE TRIGGER table_update_companyAgent_Address
after UPDATE ON companyAgent_Address FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "companyAgent_Address";

--***************************************
drop trigger if exists table_update_companyAgent_PhoneNumber;
CREATE TRIGGER table_update_companyAgent_PhoneNumber
after UPDATE ON companyAgent_PhoneNumber FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "companyAgent_PhoneNumber";

--***************************************
drop trigger if exists table_update_company_personnel_customer;
CREATE TRIGGER table_update_company_personnel_customer
after UPDATE ON company_personnel_customer FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "company_personnel_customer";

--***************************************
drop trigger if exists table_update_customer;
CREATE TRIGGER table_update_customer
after UPDATE ON customer FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "customer";

--***************************************
drop trigger if exists table_update_customer_address;
CREATE TRIGGER table_update_customer_address
after UPDATE ON customer_address FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "customer_address";

--***************************************
drop trigger if exists table_update_customer_flight;
CREATE TRIGGER table_update_customer_flight
after UPDATE ON customer_flight FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "customer_flight";

--***************************************
drop trigger if exists table_update_customer_phoneNumber;
CREATE TRIGGER table_update_customer_phoneNumber
after UPDATE ON customer_phoneNumber FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "customer_phoneNumber";

--***************************************
drop trigger if exists table_update_customer_supportAgent;
CREATE TRIGGER table_update_customer_supportAgent
after UPDATE ON customer_supportAgent FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "customer_supportAgent";

--***************************************
drop trigger if exists table_update_flight;
CREATE TRIGGER table_update_flight
after UPDATE ON flight FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "flight";

--***************************************
drop trigger if exists table_update_flight_2way;
CREATE TRIGGER table_update_flight_2way
after UPDATE ON flight_2way FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "flight_2way";

--***************************************
drop trigger if exists table_update_flight_checkoutPayment;
CREATE TRIGGER table_update_flight_checkoutPayment
after UPDATE ON flight_checkoutPayment FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "flight_checkoutPayment";

--***************************************
drop trigger if exists table_update_flight_company;
CREATE TRIGGER table_update_flight_company
after UPDATE ON flight_company FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "flight_company";

--***************************************
drop trigger if exists table_update_registered_customer;
CREATE TRIGGER table_update_registered_customer
after UPDATE ON registered_customer FOR EACH ROW
UPDATE tables_last_update
SET update_time = CURRENT_TIMESTAMP
WHERE tableName = "registered_customer";