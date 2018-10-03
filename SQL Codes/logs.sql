drop table if EXISTS log_Company;
create table log_Company (
  action VARCHAR(20),
  name VARCHAR(40),
  registrationDate DATE,
  creditAmount INT,
  quitDate DATE,
  centralOfficeID INT,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--***************************************
drop trigger if exists log_delete_Company;
DELIMITER $$
CREATE TRIGGER log_delete_Company
after DELETE ON Company FOR EACH ROW
BEGIN
  INSERT INTO log_Company VALUES ('DELETE', OLD.name, OLD.registrationDate, OLD.creditAmount, OLD.quitDate, OLD.centralOfficeID, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;
drop trigger if exists log_update_Company;
DELIMITER $$
CREATE TRIGGER log_update_Company
after UPDATE ON Company FOR EACH ROW
BEGIN
  INSERT INTO log_Company VALUES ('UPDATE', NEW.name, NEW.registrationDate, NEW.creditAmount, NEW.quitDate, NEW.centralOfficeID, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop trigger if exists log_insert_Company;
DELIMITER $$
CREATE TRIGGER log_insert_Company
after INSERT ON Company FOR EACH ROW
BEGIN
  INSERT INTO log_Company VALUES ('INSERT',  NEW.name, NEW.registrationDate, NEW.creditAmount, NEW.quitDate, NEW.centralOfficeID, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop table if EXISTS log_Branch;
create table log_Branch (
  action VARCHAR(20),
  ID INT,
  name VARCHAR(40),
  companyName VARCHAR(40),
  manamgerFirstName VARCHAR(40),
  manamgerLastName VARCHAR(40),
  mainPhoneNumber VARCHAR(40),
  mainAddress VARCHAR(40) ,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--***************************************
drop trigger if exists log_delete_Branch;
DELIMITER $$
CREATE TRIGGER log_delete_Branch
after DELETE ON Branch FOR EACH ROW
BEGIN
  INSERT INTO log_Branch VALUES ('DELETE', OLD.ID, OLD.name, OLD.companyName, OLD.manamgerFirstName, OLD.manamgerLastName, OLD.mainPhoneNumber, OLD.mainAddress, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;
drop trigger if exists log_update_Branch;
DELIMITER $$
CREATE TRIGGER log_update_Branch
after UPDATE ON Branch FOR EACH ROW
BEGIN
  INSERT INTO log_Branch VALUES ('UPDATE', NEW.ID, NEW.name, NEW.companyName, NEW.manamgerFirstName, NEW.manamgerLastName, NEW.mainPhoneNumber, NEW.mainAddress, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop trigger if exists log_insert_Branch;
DELIMITER $$
CREATE TRIGGER log_insert_Branch
after INSERT ON Branch FOR EACH ROW
BEGIN
  INSERT INTO log_Branch VALUES ('INSERT', NEW.ID, NEW.name, NEW.companyName, NEW.manamgerFirstName, NEW.manamgerLastName, NEW.mainPhoneNumber, NEW.mainAddress,  CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop table if EXISTS log_Branch_PhoneNumber;
create table log_Branch_PhoneNumber (
  action VARCHAR(20),
  BranchID int,
  phoneNumber VARCHAR(40),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--***************************************
drop trigger if exists log_delete_Branch_PhoneNumber;
DELIMITER $$
CREATE TRIGGER log_delete_Branch_PhoneNumber
after DELETE ON Branch_PhoneNumber FOR EACH ROW
BEGIN
  INSERT INTO log_Branch_PhoneNumber VALUES ('DELETE', OLD.BranchID, OLD.phoneNumber, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop trigger if exists log_update_Branch_PhoneNumber;
DELIMITER $$
CREATE TRIGGER log_update_Branch_PhoneNumber
after UPDATE ON Branch_PhoneNumber FOR EACH ROW
BEGIN
  INSERT INTO log_Branch_PhoneNumber VALUES ('UPDATE', NEW.BranchID, NEW.phoneNumber,  CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop trigger if exists log_insert_Branch_PhoneNumber;
DELIMITER $$
CREATE TRIGGER log_insert_Branch_PhoneNumber
after INSERT ON Branch_PhoneNumber FOR EACH ROW
BEGIN
  INSERT INTO log_Branch_PhoneNumber VALUES ('INSERT', NEW.BranchID, NEW.phoneNumber,  CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop table if EXISTS log_Branch_Address;
create table log_Branch_Address (
  action VARCHAR(20),
  BranchID int,
  address VARCHAR(60),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--***************************************
drop trigger if exists log_delete_Branch_Address;
DELIMITER $$
CREATE TRIGGER log_delete_Branch_Address
after DELETE ON Branch_Address FOR EACH ROW
BEGIN
  INSERT INTO log_Branch_Address VALUES ('DELETE', OLD.BranchID, OLD.address, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop trigger if exists log_update_Branch_Address;
DELIMITER $$
CREATE TRIGGER log_update_Branch_Address
after UPDATE ON Branch_Address FOR EACH ROW
BEGIN
  INSERT INTO log_Branch_Address VALUES ('UPDATE', NEW.BranchID, NEW.address, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop trigger if exists log_insert_Branch_Address;
DELIMITER $$
CREATE TRIGGER log_insert_Branch_Address
after INSERT ON Branch_Address FOR EACH ROW
BEGIN
  INSERT INTO log_Branch_Address VALUES ('INSERT', NEW.BranchID, NEW.address,  CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop table if EXISTS log_agencySpecialist;
create table log_agencySpecialist (
  action VARCHAR(20),
  firstName VARCHAR(40),
  lastName VARCHAR(40),
  socialSecurityNumber VARCHAR(40),
  mainPhoneNumber VARCHAR(40),
  mainAddress VARCHAR(60),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--***************************************
drop trigger if exists log_delete_agencySpecialist;
DELIMITER $$
CREATE TRIGGER log_delete_agencySpecialist
after DELETE ON agencySpecialist FOR EACH ROW
BEGIN
  INSERT INTO log_agencySpecialist VALUES ('DELETE', OLD.firstName, OLD.lastName, OLD.socialSecurityNumber, OLD.mainPhoneNumber, OLD.mainAddress, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop trigger if exists log_update_agencySpecialist;
DELIMITER $$
CREATE TRIGGER log_update_agencySpecialist
after UPDATE ON agencySpecialist FOR EACH ROW
BEGIN
  INSERT INTO log_agencySpecialist VALUES ('UPDATE', NEW.firstName, NEW.lastName, NEW.socialSecurityNumber, NEW.mainPhoneNumber, NEW.mainAddress, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop trigger if exists log_insert_agencySpecialist;
DELIMITER $$
CREATE TRIGGER log_insert_agencySpecialist
after INSERT ON agencySpecialist FOR EACH ROW
BEGIN
  INSERT INTO log_agencySpecialist VALUES ('INSERT', NEW.firstName, NEW.lastName, NEW.socialSecurityNumber, NEW.mainPhoneNumber, NEW.mainAddress,  CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop table if EXISTS log_agencySpecialist_PhoneNumber;
create table log_agencySpecialist_PhoneNumber (
  action VARCHAR(20),
  agencySpecialistID VARCHAR(40),
  phoneNumber VARCHAR(40),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--***************************************
drop trigger if exists log_delete_agencySpecialist_PhoneNumber;
DELIMITER $$
CREATE TRIGGER log_delete_agencySpecialist_PhoneNumber
after DELETE ON agencySpecialist_PhoneNumber FOR EACH ROW
BEGIN
  INSERT INTO log_agencySpecialist_PhoneNumber VALUES ('DELETE', OLD.agencySpecialistID, OLD.phoneNumber,  CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop trigger if exists log_update_agencySpecialist_PhoneNumber;
DELIMITER $$
CREATE TRIGGER log_update_agencySpecialist_PhoneNumber
after UPDATE ON agencySpecialist_PhoneNumber FOR EACH ROW
BEGIN
  INSERT INTO log_agencySpecialist_PhoneNumber VALUES ('UPDATE', NEW.agencySpecialistID, NEW.phoneNumber, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop trigger if exists log_insert_agencySpecialist_PhoneNumber;
DELIMITER $$
CREATE TRIGGER log_insert_agencySpecialist_PhoneNumber
after INSERT ON agencySpecialist_PhoneNumber FOR EACH ROW
BEGIN
  INSERT INTO log_agencySpecialist_PhoneNumber VALUES ('INSERT',  NEW.agencySpecialistID, NEW.phoneNumber, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop table if EXISTS log_agencySpecialist_Address;
create table log_agencySpecialist_Address (
  action VARCHAR(20),
  agencySpecialistID VARCHAR(40),
  address VARCHAR(60),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--***************************************
drop trigger if exists log_delete_agencySpecialist_Address;
DELIMITER $$
CREATE TRIGGER log_delete_agencySpecialist_Address
after DELETE ON agencySpecialist_Address FOR EACH ROW
BEGIN
  INSERT INTO log_agencySpecialist_Address VALUES ('DELETE', OLD.agencySpecialistID, OLD.address, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop trigger if exists log_update_agencySpecialist_Address;
DELIMITER $$
CREATE TRIGGER log_update_agencySpecialist_Address
after UPDATE ON agencySpecialist_Address FOR EACH ROW
BEGIN
  INSERT INTO log_agencySpecialist_Address VALUES ('UPDATE', NEW.agencySpecialistID, NEW.address, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop trigger if exists log_insert_agencySpecialist_Address;
DELIMITER $$
CREATE TRIGGER log_insert_agencySpecialist_Address
after INSERT ON agencySpecialist_Address FOR EACH ROW
BEGIN
  INSERT INTO log_agencySpecialist_Address VALUES ('INSERT',  NEW.agencySpecialistID, NEW.address, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop table if EXISTS log_companyAgent;
create table log_companyAgent (
  action VARCHAR(20),
  ID int PRIMARY KEY,
  companyName varchar(40),
  firstName VARCHAR(40),
  lastName VARCHAR(40),
  mainPhoneNumber VARCHAR(40),
  mainAddress VARCHAR(60),
  registrationDate DATE,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--***************************************
drop trigger if exists log_delete_companyAgent;
DELIMITER $$
CREATE TRIGGER log_delete_companyAgent
after DELETE ON companyAgent FOR EACH ROW
BEGIN
  INSERT INTO log_companyAgent VALUES ('DELETE',OLD.ID, OLD.companyName, OLD.firstName, OLD.lastName, OLD.mainPhoneNumber, OLD.mainAddress, OLD.registrationDate, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop trigger if exists log_update_companyAgent;
DELIMITER $$
CREATE TRIGGER log_update_companyAgent
after UPDATE ON companyAgent FOR EACH ROW
BEGIN
  INSERT INTO log_companyAgent VALUES ('UPDATE', NEW.ID, NEW.companyName, NEW.firstName, NEW.lastName, NEW.mainPhoneNumber, NEW.mainAddress, NEW.registrationDate, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop trigger if exists log_insert_companyAgent;
DELIMITER $$
CREATE TRIGGER log_insert_companyAgent
after INSERT ON companyAgent FOR EACH ROW
BEGIN
  INSERT INTO log_companyAgent VALUES ('INSERT',  NEW.ID, NEW.companyName, NEW.firstName, NEW.lastName, NEW.mainPhoneNumber, NEW.mainAddress, NEW.registrationDate, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop table if EXISTS log_companyAgent_PhoneNumber;
create table log_companyAgent_PhoneNumber (
  action VARCHAR(20),
  companyAgentID int,
  phoneNumber VARCHAR(40),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--***************************************
drop trigger if exists log_delete_companyAgent_PhoneNumber;
DELIMITER $$
CREATE TRIGGER log_delete_companyAgent_PhoneNumber
after DELETE ON companyAgent_PhoneNumber FOR EACH ROW
BEGIN
  INSERT INTO log_companyAgent_PhoneNumber VALUES ('DELETE', OLD.companyAgentID, OLD.phoneNumber, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop trigger if exists log_update_companyAgent_PhoneNumber;
DELIMITER $$
CREATE TRIGGER log_update_companyAgent_PhoneNumber
after UPDATE ON companyAgent_PhoneNumber FOR EACH ROW
BEGIN
  INSERT INTO log_companyAgent_PhoneNumber VALUES ('UPDATE', NEW.companyAgentID, NEW.phoneNumber, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_insert_companyAgent_PhoneNumber;
DELIMITER $$
CREATE TRIGGER log_insert_companyAgent_PhoneNumber
after INSERT ON companyAgent_PhoneNumber FOR EACH ROW
BEGIN
  INSERT INTO log_companyAgent_PhoneNumber VALUES ('INSERT', NEW.companyAgentID, NEW.phoneNumber, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop table if EXISTS log_companyAgent_Address;
create table log_companyAgent_Address (
  action VARCHAR(20),
  companyAgentID int,
  address VARCHAR(60),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

drop trigger if exists log_delete_companyAgent_Address;
DELIMITER $$
CREATE TRIGGER log_delete_companyAgent_Address
after DELETE ON companyAgent_Address FOR EACH ROW
BEGIN
  INSERT INTO log_companyAgent_Address VALUES ('DELETE', OLD.companyAgentID, OLD.address, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_update_companyAgent_Address;
DELIMITER $$
CREATE TRIGGER log_update_companyAgent_Address
after UPDATE ON companyAgent_Address FOR EACH ROW
BEGIN
  INSERT INTO log_companyAgent_Address VALUES ('UPDATE', NEW.companyAgentID, NEW.address,  CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_insert_companyAgent_Address;
DELIMITER $$
CREATE TRIGGER log_insert_companyAgent_Address
after INSERT ON companyAgent_Address FOR EACH ROW
BEGIN
  INSERT INTO log_companyAgent_Address VALUES ('INSERT', NEW.companyAgentID, NEW.address, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop table if EXISTS log_checkout_payment;
create table log_checkout_payment (
  action VARCHAR(20),
  trackingCode varchar(40) PRIMARY KEY  ,
  companyName varchar(40) NOT NULL,
  checkoutRequestDate DATE,
  payment_amount VARCHAR(40),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

drop trigger if exists log_delete_checkout_payment;
DELIMITER $$
CREATE TRIGGER log_delete_checkout_payment
after DELETE ON checkout_payment FOR EACH ROW
BEGIN
  INSERT INTO log_checkout_payment VALUES ('DELETE', OLD.trackingCode, OLD.companyName, OLD.checkoutRequestDate, OLD.payment_amount, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_update_checkout_payment;
DELIMITER $$
CREATE TRIGGER log_update_checkout_payment
after UPDATE ON checkout_payment FOR EACH ROW
BEGIN
  INSERT INTO log_checkout_payment VALUES ('UPDATE', NEW.trackingCode, NEW.companyName, NEW.checkoutRequestDate, NEW.payment_amount, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_insert_checkout_payment;
DELIMITER $$
CREATE TRIGGER log_insert_checkout_payment
after INSERT ON checkout_payment FOR EACH ROW
BEGIN
  INSERT INTO log_checkout_payment VALUES ('INSERT', NEW.trackingCode, NEW.companyName, NEW.checkoutRequestDate, NEW.payment_amount, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop table if EXISTS log_flight;
create table log_flight (
  action VARCHAR(20),
  ID int PRIMARY KEY,
  source VARCHAR(40),
  destination VARCHAR(40),
  departureDateTime TIMESTAMP,
  flightDuration_GO INT,
  airplaneName VARCHAR(40),
  capacity int,
  pilotName VARCHAR(40),
  cost VARCHAR(40),
  status INT,
  class VARCHAR(40),
  companyName VARCHAR(40),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--***************************************
drop trigger if exists log_delete_flight;
DELIMITER $$
CREATE TRIGGER log_delete_flight
after DELETE ON flight FOR EACH ROW
BEGIN
  INSERT INTO log_flight VALUES ('DELETE', OLD.ID, OLD.source, OLD.destination, OLD.departureDateTime, OLD.flightDuration_GO, OLD.airplaneName,
   OLD.capacity, OLD.pilotName, OLD.cost, OLD.status, OLD.class, OLD.companyName, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop trigger if exists log_update_flight;
DELIMITER $$
CREATE TRIGGER log_update_flight
after UPDATE ON flight FOR EACH ROW
BEGIN
  INSERT INTO log_flight VALUES ('UPDATE', NEW.ID, NEW.source, NEW.destination, NEW.departureDateTime, NEW.flightDuration_GO, NEW.airplaneName,
   NEW.capacity, NEW.pilotName, NEW.cost, NEW.status, NEW.class, NEW.companyName, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop trigger if exists log_insert_flight;
DELIMITER $$
CREATE TRIGGER log_insert_flight
after INSERT ON flight FOR EACH ROW
BEGIN
  INSERT INTO log_flight VALUES ('INSERT', NEW.ID, NEW.source, NEW.destination, NEW.departureDateTime, NEW.flightDuration_GO, NEW.airplaneName,
   NEW.capacity, NEW.pilotName, NEW.cost, NEW.status, NEW.class, NEW.companyName,  CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop table if EXISTS log_flight_2way;
create table log_flight_2way (
  action VARCHAR(20),
  returnDateTime TIMESTAMP,
  flightDuration_RETURN INT,
  flightID INT,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--***************************************
drop trigger if exists log_delete_flight_2way;
DELIMITER $$
CREATE TRIGGER log_delete_flight_2way
after DELETE ON flight_2way FOR EACH ROW
BEGIN
  INSERT INTO log_flight_2way VALUES ('DELETE', OLD.returnDateTime, OLD.flightDuration_RETURN, OLD.flightID, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop trigger if exists log_update_flight_2way;
DELIMITER $$
CREATE TRIGGER log_update_flight_2way
after UPDATE ON flight_2way FOR EACH ROW
BEGIN
  INSERT INTO log_flight_2way VALUES ('UPDATE', NEW.returnDateTime, NEW.flightDuration_RETURN, NEW.flightID, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop trigger if exists log_insert_flight_2way;
DELIMITER $$
CREATE TRIGGER log_insert_flight_2way
after INSERT ON flight_2way FOR EACH ROW
BEGIN
  INSERT INTO log_flight_2way VALUES ('INSERT',  NEW.returnDateTime, NEW.flightDuration_RETURN, NEW.flightID, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop table if EXISTS log_agencySupportAgent;
create table log_agencySupportAgent (
  action VARCHAR(20),
  ID INT,
  firstName VARCHAR(40),
  lastName VARCHAR(40),
  onlineStatus INT,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--***************************************
drop trigger if exists log_delete_agencySupportAgent;
DELIMITER $$
CREATE TRIGGER log_delete_agencySupportAgent
after DELETE ON agencySupportAgent FOR EACH ROW
BEGIN
  INSERT INTO log_agencySupportAgent
  VALUES ('DELETE', OLD.ID, OLD.firstName, OLD.lastName, OLD.onlineStatus, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop trigger if exists log_update_agencySupportAgent;
DELIMITER $$
CREATE TRIGGER log_update_agencySupportAgent
after UPDATE ON agencySupportAgent FOR EACH ROW
BEGIN
  INSERT INTO log_agencySupportAgent VALUES ('UPDATE', NEW.ID, NEW.firstName, NEW.lastName, NEW.onlineStatus, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop trigger if exists log_insert_agencySupportAgent;
DELIMITER $$
CREATE TRIGGER log_insert_agencySupportAgent
after INSERT ON agencySupportAgent FOR EACH ROW
BEGIN
  INSERT INTO log_agencySupportAgent VALUES ('INSERT', NEW.ID, NEW.firstName, NEW.lastName, NEW.onlineStatus, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop table if EXISTS log_customer;
create table log_customer (
  action VARCHAR(20),
  email VARCHAR(40),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

drop trigger if exists log_delete_customer;
DELIMITER $$
CREATE TRIGGER log_delete_customer
after DELETE ON customer FOR EACH ROW
BEGIN
  INSERT INTO log_customer VALUES ('DELETE', OLD.email, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_update_customer;
DELIMITER $$
CREATE TRIGGER log_update_customer
after UPDATE ON customer FOR EACH ROW
BEGIN
  INSERT INTO log_customer VALUES ('UPDATE', NEW.email, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_insert_customer;
DELIMITER $$
CREATE TRIGGER log_insert_customer
after INSERT ON customer FOR EACH ROW
BEGIN
  INSERT INTO log_customer VALUES ('INSERT', NEW.email, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop table if EXISTS log_registered_customer;
create table log_registered_customer (
  action VARCHAR(20),
  email VARCHAR(40),
  username VARCHAR(40) UNIQUE,
  password VARCHAR(40),
  firstName VARCHAR(40),
  lastName VARCHAR(40),
  fathersName VARCHAR(40),
  birthDate DATE,
  mainPhoneNumber VARCHAR (40) NOT NULL,
  mainAddress VARCHAR (60) NOT NULL,
  birthPlace VARCHAR(40),
  socialSecurityNumber VARCHAR(40),
  accountNumber VARCHAR(40),
  creditAmount INT,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

drop trigger if exists log_delete_registered_customer;
DELIMITER $$
CREATE TRIGGER log_delete_registered_customer
after DELETE ON registered_customer FOR EACH ROW
BEGIN
  INSERT INTO log_registered_customer VALUES ('DELETE', OLD.email, OLD.username, OLD.password, OLD.firstName, OLD.lastName, OLD.fathersName,
   OLD.birthDate, OLD.mainPhoneNumber, OLD.mainAddress, OLD.birthPlace, OLD.socialSecurityNumber, OLD.accountNumber, OLD.creditAmount, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_update_registered_customer;
DELIMITER $$
CREATE TRIGGER log_update_registered_customer
after UPDATE ON registered_customer FOR EACH ROW
BEGIN
  INSERT INTO log_registered_customer VALUES ('UPDATE',  NEW.email, NEW.username, NEW.password, NEW.firstName, NEW.lastName, NEW.fathersName,
   NEW.birthDate, NEW.mainPhoneNumber, NEW.mainAddress, NEW.birthPlace, NEW.socialSecurityNumber, NEW.accountNumber, NEW.creditAmount, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_insert_registered_customer;
DELIMITER $$
CREATE TRIGGER log_insert_registered_customer
after INSERT ON registered_customer FOR EACH ROW
BEGIN
  INSERT INTO log_registered_customer VALUES ('INSERT', NEW.email, NEW.username, NEW.password, NEW.firstName, NEW.lastName, NEW.fathersName,
   NEW.birthDate, NEW.mainPhoneNumber, NEW.mainAddress, NEW.birthPlace, NEW.socialSecurityNumber, NEW.accountNumber, NEW.creditAmount,  CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

-- **********************************************
drop table if EXISTS log_customer_address;
create table log_customer_address (
  action VARCHAR(20),
  customerID VARCHAR(40),
  address VARCHAR (60),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

drop trigger if exists log_delete_customer_address;
DELIMITER $$
CREATE TRIGGER log_delete_customer_address
after DELETE ON customer_address FOR EACH ROW
BEGIN
  INSERT INTO log_customer_address VALUES ('DELETE', OLD.customerID, OLD.address, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_update_customer_address;
DELIMITER $$
CREATE TRIGGER log_update_customer_address
after UPDATE ON customer_address FOR EACH ROW
BEGIN
  INSERT INTO log_customer_address VALUES ('UPDATE', NEW.customerID, NEW.address, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_insert_customer_address;
DELIMITER $$
CREATE TRIGGER log_insert_customer_address
after INSERT ON customer_address FOR EACH ROW
BEGIN
  INSERT INTO log_customer_address VALUES ('INSERT', NEW.customerID, NEW.address, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop table if EXISTS log_customer_phoneNumber;
create table log_customer_phoneNumber (
  action VARCHAR(20),
  customerID VARCHAR(40),
  phoneNumber VARCHAR (40),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

drop trigger if exists log_delete_customer_phoneNumber;
DELIMITER $$
CREATE TRIGGER log_delete_customer_phoneNumber
after DELETE ON customer_phoneNumber FOR EACH ROW
BEGIN
  INSERT INTO log_customer_phoneNumber VALUES ('DELETE', OLD.customerID, OLD.phoneNumber, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_update_customer_phoneNumber;
DELIMITER $$
CREATE TRIGGER log_update_customer_phoneNumber
after UPDATE ON customer_phoneNumber FOR EACH ROW
BEGIN
  INSERT INTO log_customer_phoneNumber VALUES ('UPDATE', NEW.customerID, NEW.phoneNumber,  CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_insert_customer_phoneNumber;
DELIMITER $$
CREATE TRIGGER log_insert_customer_phoneNumber
after INSERT ON customer_phoneNumber FOR EACH ROW
BEGIN
  INSERT INTO log_customer_phoneNumber VALUES ('INSERT',  NEW.customerID, NEW.phoneNumber, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop table if EXISTS log_company_personnel_customer;
create table log_company_personnel_customer (
  action VARCHAR(20),
  email VARCHAR(40),
  companyName VARCHAR(40),
  personnelNum VARCHAR(40),
  registrationDate DATE,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

drop trigger if exists log_delete_company_personnel_customer;
DELIMITER $$
CREATE TRIGGER log_delete_company_personnel_customer
after DELETE ON company_personnel_customer FOR EACH ROW
BEGIN
  INSERT INTO log_company_personnel_customer VALUES ('DELETE', OLD.email, OLD.companyName, OLD.personnelNum, OLD.registrationDate, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_update_company_personnel_customer;
DELIMITER $$
CREATE TRIGGER log_update_company_personnel_customer
after UPDATE ON company_personnel_customer FOR EACH ROW
BEGIN
  INSERT INTO log_company_personnel_customer VALUES ('UPDATE', NEW.email, NEW.companyName, NEW.personnelNum, NEW.registrationDate, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_insert_company_personnel_customer;
DELIMITER $$
CREATE TRIGGER log_insert_company_personnel_customer
after INSERT ON company_personnel_customer FOR EACH ROW
BEGIN
  INSERT INTO log_company_personnel_customer VALUES ('INSERT',  NEW.email, NEW.companyName, NEW.personnelNum, NEW.registrationDate, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop table if EXISTS log_customer_supportAgent;
create table log_customer_supportAgent (
  action VARCHAR(20),
  customerEmail VARCHAR(40),
  supportAgentID int,
  title VARCHAR(40),
  dateTime TIMESTAMP,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

drop trigger if exists log_delete_customer_supportAgent;
DELIMITER $$
CREATE TRIGGER log_delete_customer_supportAgent
after DELETE ON customer_supportAgent FOR EACH ROW
BEGIN
  INSERT INTO log_customer_supportAgent VALUES ('DELETE', OLD.customerEmail, OLD.supportAgentID, OLD.title, OLD.dateTime, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_update_customer_supportAgent;
DELIMITER $$
CREATE TRIGGER log_update_customer_supportAgent
after UPDATE ON customer_supportAgent FOR EACH ROW
BEGIN
  INSERT INTO log_customer_supportAgent VALUES ('UPDATE', NEW.customerEmail, NEW.supportAgentID, NEW.title, NEW.dateTime, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_insert_customer_supportAgent;
DELIMITER $$
CREATE TRIGGER log_insert_customer_supportAgent
after INSERT ON customer_supportAgent FOR EACH ROW
BEGIN
  INSERT INTO log_customer_supportAgent VALUES ('INSERT', NEW.customerEmail, NEW.supportAgentID, NEW.title, NEW.dateTime, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop table if EXISTS log_customer_flight;
create table log_customer_flight (
  action VARCHAR(20),
  customerEmail VARCHAR(40),
  flightID int,
  paymentType VARCHAR(40),
  paymentAmount INT,
  paymentDate DATE,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

drop trigger if exists log_delete_customer_flight;
DELIMITER $$
CREATE TRIGGER log_delete_customer_flight
after DELETE ON customer_flight FOR EACH ROW
BEGIN
  INSERT INTO log_customer_flight VALUES ('DELETE', OLD.customerEmail, OLD.flightID, OLD.paymentType, OLD.paymentAmount, OLD.paymentDate, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_update_customer_flight;
DELIMITER $$
CREATE TRIGGER log_update_customer_flight
after UPDATE ON customer_flight FOR EACH ROW
BEGIN
  INSERT INTO log_customer_flight VALUES ('UPDATE', NEW.customerEmail, NEW.flightID, NEW.paymentType, NEW.paymentAmount, NEW.paymentDate, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_insert_customer_flight;
DELIMITER $$
CREATE TRIGGER log_insert_customer_flight
after INSERT ON customer_flight FOR EACH ROW
BEGIN
  INSERT INTO log_customer_flight VALUES ('INSERT',  NEW.customerEmail, NEW.flightID, NEW.paymentType, NEW.paymentAmount, NEW.paymentDate, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop table if EXISTS log_flight_checkoutPayment;
create table log_flight_checkoutPayment (
  action VARCHAR(20),
  flightID int,
  paymentTrackingCode VARCHAR(40),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

drop trigger if exists log_delete_flight_checkoutPayment;
DELIMITER $$
CREATE TRIGGER log_delete_flight_checkoutPayment
after DELETE ON flight_checkoutPayment FOR EACH ROW
BEGIN
  INSERT INTO log_flight_checkoutPayment VALUES ('DELETE', OLD.flightID, OLD.paymentTrackingCode, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_update_flight_checkoutPayment;
DELIMITER $$
CREATE TRIGGER log_update_flight_checkoutPayment
after UPDATE ON flight_checkoutPayment FOR EACH ROW
BEGIN
  INSERT INTO log_flight_checkoutPayment VALUES ('UPDATE', NEW.flightID, NEW.paymentTrackingCode, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_insert_flight_checkoutPayment;
DELIMITER $$
CREATE TRIGGER log_insert_flight_checkoutPayment
after INSERT ON flight_checkoutPayment FOR EACH ROW
BEGIN
  INSERT INTO log_flight_checkoutPayment VALUES ('INSERT', NEW.flightID, NEW.paymentTrackingCode, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

--***************************************
drop table if EXISTS log_flight_company;
create table log_flight_company (
  action VARCHAR(20),
  flightID int,
  companyName VARCHAR(40),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

drop trigger if exists log_delete_flight_company;
DELIMITER $$
CREATE TRIGGER log_delete_flight_company
after DELETE ON flight_company FOR EACH ROW
BEGIN
  INSERT INTO log_flight_company VALUES ('DELETE', OLD.flightID, OLD.companyName, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_update_flight_company;
DELIMITER $$
CREATE TRIGGER log_update_flight_company
after UPDATE ON flight_company FOR EACH ROW
BEGIN
  INSERT INTO log_flight_company VALUES ('UPDATE', NEW.flightID, NEW.companyName, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;

drop trigger if exists log_insert_flight_company;
DELIMITER $$
CREATE TRIGGER log_insert_flight_company
after INSERT ON flight_company FOR EACH ROW
BEGIN
  INSERT INTO log_flight_company VALUES ('INSERT',  NEW.flightID, NEW.companyName, CURRENT_TIMESTAMP);
END;
$$
DELIMITER ;