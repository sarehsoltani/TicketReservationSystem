drop table if exists tables_last_update;
drop table if exists customer_supportAgent;
drop table if exists flight_checkoutPayment;
drop table if exists customer_flight;
drop table if exists flight_company;
drop table if exists Branch_PhoneNumber;
drop table if exists Branch_Address;
drop table if exists companyAgent_PhoneNumber;
drop table if exists companyAgent_Address;
drop table if exists companyAgent;
drop table if exists checkout_payment;
alter table Company drop foreign key FK_company;
alter table Branch drop foreign key FK_branch;
drop table if exists flight_2way;
drop table if exists flight;
drop table if exists customer_address;
drop table if exists customer_phoneNumber;
drop table if exists registered_customer;
drop table if exists company_personnel_customer;
drop table if exists customer;
drop table if exists Branch;
drop table if exists Company;
drop table if exists agencySpecialist_PhoneNumber;
drop table if exists agencySpecialist_Address;
drop table if exists agencySpecialist;
drop table if exists agencySupportAgent;


/* Create the schema for our tables */
-- **************************************
create table Company(
  name VARCHAR(40),
  registrationDate DATE,
  creditAmount INT,
  quitDate DATE,
  centralOfficeID INT not NULL ,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (name)
  );

INSERT INTO Company VALUES ('Aegean Airlines','2010-11-11','0', null, 1, CURRENT_TIMESTAMP);
INSERT INTO Company VALUES ('Garuda Indonesia','2011-11-11','0', null, 4, CURRENT_TIMESTAMP);
INSERT INTO Company VALUES ('Fiji Airways','2012-11-11','0', null, 7, CURRENT_TIMESTAMP);
INSERT INTO Company VALUES ('Cathay Pacific','2013-11-11','0', null, 12, CURRENT_TIMESTAMP);
INSERT INTO Company VALUES ('Regional Express','2014-11-11','0', null, 15, CURRENT_TIMESTAMP);

--**************************************
create table Branch(
  ID INT,
  name VARCHAR(40),
  companyName VARCHAR(40),
  manamgerFirstName VARCHAR(40),
  manamgerLastName VARCHAR(40),
  mainPhoneNumber VARCHAR(40) NOT NULL,
  mainAddress VARCHAR(40) NOT NULL ,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (ID)
  );

INSERT INTO Branch VALUES ('1','OpenSkies','Aegean Airlines','Jeffrey','Strickland','33-170','123 6th St.Melbourne, FL 32904' , CURRENT_TIMESTAMP);
INSERT INTO Branch VALUES ('2','Vanilla Air','Aegean Airlines','Eva','Hicks','44-172','71 Pilgrim AvenueChevy Chase, MD 20815', CURRENT_TIMESTAMP);
INSERT INTO Branch VALUES ('3','Vietnam','Aegean Airlines','Eduardo','Bridges','55-175','44 Shirley Ave.West Chicago, IL 60185', CURRENT_TIMESTAMP);
INSERT INTO Branch VALUES ('4','Eurowings','Garuda Indonesia','Orville','Curtis','88-170','70 Bowman St.South Windsor, CT 06074', CURRENT_TIMESTAMP);
INSERT INTO Branch VALUES ('5','Dragonair','Garuda Indonesia','Bill','Nunez','55-172','514 S. Magnolia St.Orlando, FL 32806', CURRENT_TIMESTAMP);
INSERT INTO Branch VALUES ('6','easyJet','Garuda Indonesia','Jan','Stevens','32-175','4 Goldfield Rd.Honolulu, HI 96815', CURRENT_TIMESTAMP);
INSERT INTO Branch VALUES ('7','Norwegian Air Shuttle','Fiji Airways','Lawrence','Cannon','88-176','40 County Dr.Waxhaw, NC 28173', CURRENT_TIMESTAMP);
INSERT INTO Branch VALUES ('8','tigerair','Fiji Airways','Jody','Stanley','55-178','564 Sussex RoadRichmond Hill, NY 11418', CURRENT_TIMESTAMP);
INSERT INTO Branch VALUES ('9','UTair Aviation','Fiji Airways','Martin','Martinez','32-179','926 Henry Ave.Port Chester, NY 10573', CURRENT_TIMESTAMP);
INSERT INTO Branch VALUES ('10','Norwegian Air Shuttle','Cathay Pacific','Alexander','Atkinson','10-176','7283 Mill Ave.Providence, RI 02904', CURRENT_TIMESTAMP);
INSERT INTO Branch VALUES ('11','tigerair','Cathay Pacific','Gabriel','Burton','11-178','165 Plymouth CourtCumming, GA 30040', CURRENT_TIMESTAMP);
INSERT INTO Branch VALUES ('12','UTair Aviation','Cathay Pacific','Adam','Wilson','66-179','13 Vernon St.Oak Creek, WI 53154', CURRENT_TIMESTAMP);
INSERT INTO Branch VALUES ('13','Lion Airlines','Regional Express','Lucas','Burton','10-176','2 Glen Ridge St.Hyde Park, MA 02136', CURRENT_TIMESTAMP);
INSERT INTO Branch VALUES ('14','bmi regional','Regional Express','Owen','Foster','22-178','562 S. Somerset Rd.Hastings, MN 55033', CURRENT_TIMESTAMP);
INSERT INTO Branch VALUES ('15','Asiana','Regional Express','Foster','Wagner','42-160','8261 Sycamore Ave.Cordova, TN 38016', CURRENT_TIMESTAMP);

 ALTER TABLE Branch
 ADD CONSTRAINT FK_branch FOREIGN KEY (companyName) REFERENCES Company(name) ON DELETE CASCADE;

 ALTER TABLE Company
 ADD CONSTRAINT FK_company FOREIGN KEY (centralOfficeID) REFERENCES Branch(ID) ON DELETE CASCADE ;

-- **************************************
create table Branch_PhoneNumber (
  BranchID int,
  phoneNumber VARCHAR(40),
  FOREIGN KEY (BranchID) REFERENCES Branch(ID) ON DELETE CASCADE ON UPDATE SET NULL
);

-- **************************************
create table Branch_Address (
  BranchID int,
  address VARCHAR(60),
  FOREIGN KEY (BranchID) REFERENCES Branch(ID) ON DELETE CASCADE ON UPDATE SET NULL
);

-- **************************************
create table agencySpecialist (
  firstName VARCHAR(40),
  lastName VARCHAR(40),
  socialSecurityNumber VARCHAR(40),
  mainPhoneNumber VARCHAR(40) NOT NULL,
  mainAddress VARCHAR(60) NOT NULL,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (socialSecurityNumber)
);

-- **************************************
create table agencySpecialist_PhoneNumber (
  agencySpecialistID VARCHAR(40),
  phoneNumber VARCHAR(40),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (agencySpecialistID) REFERENCES agencySpecialist(socialSecurityNumber)ON DELETE CASCADE ON UPDATE SET NULL
--   PRIMARY KEY (agencySpecialistID, phoneNumber)
);

-- **************************************
create table agencySpecialist_Address(
  agencySpecialistID VARCHAR(40),
  address VARCHAR(60),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (agencySpecialistID) REFERENCES agencySpecialist(socialSecurityNumber) ON DELETE CASCADE ON UPDATE SET NULL
--   PRIMARY KEY (agencySpecialistID, address)
);

-- ***********************************
create table companyAgent (
  ID int PRIMARY KEY,
  companyName varchar(40) NOT NULL,
  firstName VARCHAR(40),
  lastName VARCHAR(40),
  mainPhoneNumber VARCHAR(40) NOT NULL,
  mainAddress VARCHAR(60) NOT NULL,
  registrationDate DATE,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (companyName) REFERENCES Company(name) ON DELETE CASCADE
);

-- **************************************
 create table companyAgent_PhoneNumber (
  companyAgentID int,
  phoneNumber VARCHAR(40),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (companyAgentID) REFERENCES companyAgent(ID) ON DELETE CASCADE ON UPDATE SET NULL
--   PRIMARY KEY (companyAgentID, phoneNumber)
);

-- **************************************
create table companyAgent_Address (
  companyAgentID int,
  address VARCHAR(60),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (companyAgentID) REFERENCES companyAgent(ID) ON DELETE CASCADE ON UPDATE SET NULL
--   PRIMARY KEY (companyAgentID, address)
);

-- **************************************
create table checkout_payment (
  trackingCode varchar(40) PRIMARY KEY  ,
  companyName varchar(40) NOT NULL,
  checkoutRequestDate DATE,
  payment_amount VARCHAR(40),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (companyName) REFERENCES Company(name) ON DELETE CASCADE
);

-- *************************************
create table flight (
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
  FOREIGN KEY (companyName) REFERENCES Company(name) ON DELETE CASCADE ON UPDATE SET NULL
);

-- **************************************
create table flight_2way (
  returnDateTime TIMESTAMP,
  flightDuration_RETURN INT,
  flightID INT,
  FOREIGN KEY (flightID) REFERENCES flight(ID) ON DELETE CASCADE ON UPDATE SET NULL
);

-- **************************************
create table agencySupportAgent ( 
  ID INT PRIMARY KEY ,
  firstName VARCHAR(40),
  lastName VARCHAR(40),
  onlineStatus INT,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- **************************************
create table customer (
  email VARCHAR(40),
  PRIMARY KEY (email)
);

-- **************************************
create table registered_customer(
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
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (email) REFERENCES customer(email) ON DELETE CASCADE ON UPDATE SET NULL
);

-- **************************************
CREATE TABLE customer_address( 
  customerID VARCHAR(40),
  address VARCHAR (60),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   PRIMARY KEY (customerID, address),
  FOREIGN KEY (customerID) REFERENCES registered_customer(email) ON DELETE CASCADE ON UPDATE SET NULL
);

-- **************************************
CREATE TABLE customer_phoneNumber( 
  customerID VARCHAR(40),
  phoneNumber VARCHAR (40),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   PRIMARY KEY (customerID, phoneNumber),
  FOREIGN KEY (customerID) REFERENCES registered_customer(email) ON DELETE CASCADE ON UPDATE SET NULL
 );

-- **************************************
create table company_personnel_customer( 
  email VARCHAR(40),
  companyName VARCHAR(40),
  personnelNum VARCHAR(40),
  registrationDate DATE,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (email) REFERENCES customer(email) ON DELETE CASCADE ON UPDATE SET NULL,
  FOREIGN KEY (companyName) REFERENCES Company(name) ON DELETE CASCADE ON UPDATE SET NULL
);

-- **************************************
-- Relations
-- **************************************
CREATE TABLE customer_supportAgent(
  customerEmail VARCHAR(40),
  supportAgentID int,
  title VARCHAR(40),
  dateTime TIMESTAMP,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (customerEmail) REFERENCES customer(email) ON DELETE CASCADE ON UPDATE SET NULL,
  FOREIGN KEY (supportAgentID) REFERENCES agencySupportAgent(ID) ON DELETE CASCADE ON UPDATE SET NULL
);

CREATE TABLE customer_flight(
  customerEmail VARCHAR(40),
  flightID int,
  paymentType VARCHAR(40),
  paymentAmount INT,
  paymentDate DATE,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (customerEmail) REFERENCES customer(email) ON DELETE CASCADE ON UPDATE SET NULL,
  FOREIGN KEY (flightID) REFERENCES flight(ID) ON DELETE CASCADE ON UPDATE SET NULL
);

CREATE TABLE flight_checkoutPayment(
  flightID int,
  paymentTrackingCode VARCHAR(40),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (paymentTrackingCode) REFERENCES checkout_payment(trackingCode) ON DELETE CASCADE ON UPDATE SET NULL,
  FOREIGN KEY (flightID) REFERENCES flight(ID) ON DELETE CASCADE ON UPDATE SET NULL
);

CREATE TABLE flight_company(
  flightID int,
  companyName VARCHAR(40),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (companyName) REFERENCES Company(name) ON DELETE CASCADE ON UPDATE SET NULL,
  FOREIGN KEY (flightID) REFERENCES flight(ID) ON DELETE CASCADE ON UPDATE SET NULL
);

CREATE TABLE tables_last_update(
  tableName VARCHAR(40),
  update_time TIMESTAMP
);

INSERT INTO tables_last_update VALUES ("Branch", null);
INSERT INTO tables_last_update VALUES ("Branch_Address", null);
INSERT INTO tables_last_update VALUES ("Branch_PhoneNumber", null);
INSERT INTO tables_last_update VALUES ("Company", null);
INSERT INTO tables_last_update VALUES ("agencySpecialist", null);
INSERT INTO tables_last_update VALUES ("agencySpecialist_Address", null);
INSERT INTO tables_last_update VALUES ("agencySpecialist_PhoneNumber", null);
INSERT INTO tables_last_update VALUES ("agencySupportAgent", null);
INSERT INTO tables_last_update VALUES ("checkout_payment", null);
INSERT INTO tables_last_update VALUES ("companyAgent", null);
INSERT INTO tables_last_update VALUES ("companyAgent_Address", null);
INSERT INTO tables_last_update VALUES ("companyAgent_PhoneNumber", null);
INSERT INTO tables_last_update VALUES ("company_personnel_customer", null);
INSERT INTO tables_last_update VALUES ("customer", null);
INSERT INTO tables_last_update VALUES ("customer_address", null);
INSERT INTO tables_last_update VALUES ("customer_flight.", null);
INSERT INTO tables_last_update VALUES ("customer_phoneNumber", null);
INSERT INTO tables_last_update VALUES ("customer_supportAgent", null);
INSERT INTO tables_last_update VALUES ("flight", null);
INSERT INTO tables_last_update VALUES ("flight_2way", null);
INSERT INTO tables_last_update VALUES ("flight_checkoutPayment", null);
INSERT INTO tables_last_update VALUES ("flight_company", null);
INSERT INTO tables_last_update VALUES ("registered_customer", null);