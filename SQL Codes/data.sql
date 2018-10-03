DELETE FROM customer WHERE 1;
DELETE FROM registered_customer WHERE 1;
DELETE FROM customer_address WHERE 1;
DELETE FROM customer_phoneNumber WHERE 1;
DELETE FROM company_personnel_customer WHERE 1;

INSERT INTO customer VALUES('seurat@sbcglobal.net');
INSERT INTO customer VALUES('blixem@sbcglobal.net');
INSERT INTO customer VALUES('grady@mac.com');
INSERT INTO customer VALUES('marnanel@outlook.com');
INSERT INTO customer VALUES('mwilson@live.com');
INSERT INTO customer VALUES('tskirvin@comcast.net');
INSERT INTO customer VALUES('seasweb@mac.com');
INSERT INTO customer VALUES('jdhildeb@verizon.net');
INSERT INTO customer VALUES('facet@me.com');
INSERT INTO customer VALUES('irving@att.net');
INSERT INTO customer VALUES('neuffer@outlook.com');
INSERT INTO customer VALUES('jimmichie@yahoo.com');
INSERT INTO customer VALUES('carreras@msn.com');
INSERT INTO customer VALUES('monkeydo@optonline.net');
INSERT INTO customer VALUES('shrapnull@mac.com');

INSERT INTO registered_customer VALUES('seurat@sbcglobal.net', 'seurat', '1234', 'Bennie', 'Mcgee', 'Terrell', '1980-02-01', '546-9442', '63 South Ave, Garwood, NJ, 07027', 'Garwood', '438-20-4870', '494015489', 100, CURRENT_TIMESTAMP);
INSERT INTO registered_customer VALUES('blixem@sbcglobal.net', 'blixem', '1234', 'Shirley', '	Greer', 'Steve', '1981-02-03', '546-4478', '803 Jefferson Cir, Martinsville, VA, 24112', 'Martinsville', '616-63-7210', '494015478', 200, CURRENT_TIMESTAMP);
INSERT INTO registered_customer VALUES('grady@mac.com', 'grady', '1234', 'Jerome', 'Porter', 'Joe', '1982-02-01', '569-4371', '159 Russell St, Florence, MS, 39073 ', 'Florence', '559-49-8224', '495815489', 300, CURRENT_TIMESTAMP);
INSERT INTO registered_customer VALUES('marnanel@outlook.com', 'marnanel', '1234', 'Willis', 'Sanders', 'Orville', '1983-02-01', '446-8851', '6161 E Runnymede Ct, Camby, IN, 46113', 'Camby', '651-52-2430', '494805489', 120, CURRENT_TIMESTAMP);
INSERT INTO registered_customer VALUES('mwilson@live.com', 'mwilson', '1234', 'Edna', 'West', 'Patrick', '1984-02-01', '906-2721', '616 County 765 Rd, Moore, TX, 78057', 'Moore', '679-01-7413', '754015489', 0, CURRENT_TIMESTAMP);
INSERT INTO registered_customer VALUES('tskirvin@comcast.net', 'tskirvin', '1234', 'Francis', 'Wright', 'Herbert', '1985-02-01', '925-1352', '11532 Parker Dr, Belle Center, OH, 43310', 'Belle Center', '751-05-2889', '494019189', 0, CURRENT_TIMESTAMP);
INSERT INTO registered_customer VALUES('seasweb@mac.com', 'seasweb', '1234', 'Lee', 'Hicks', 'Chester', '1986-02-01', '712-7719', '126 Thistle Rd, Rustburg, VA, 24588', 'Rustburg', '514-80-2286', '494019989', 20, CURRENT_TIMESTAMP);
INSERT INTO registered_customer VALUES('jdhildeb@verizon.net', 'jdhildeb', '1234', 'Inez', 'Butler', 'Robert', '1987-02-01', '318-9593', '6498 E 25th S, Peru, IN, 46970', 'Peru', '513-30-1396', '494015465', 50, CURRENT_TIMESTAMP);
INSERT INTO registered_customer VALUES('facet@me.com', 'facet', '1234', 'Ralph', 'Chambers', 'Jimmie', '1988-02-01', '830-4346', '672 W Edmund Ave, Saint Paul, MN, 55104', 'Saint Paul', '574-08-2146', '124015489', 60, CURRENT_TIMESTAMP);
INSERT INTO registered_customer VALUES('irving@att.net', 'irving', '1234', 'Joy', 'Washington', 'Owen', '1989-02-01', '352-6315', '54 Hazen Notch Rd, Lowell, VT, 05847', 'Lowell', '523-19-6158', '234515489', 100, CURRENT_TIMESTAMP);

INSERT INTO customer_address VALUES ('grady@mac.com', '1125, 154th St, Winchester, Jefferson, Kansas', CURRENT_TIMESTAMP);
INSERT INTO customer_address VALUES ('mwilson@live.com', '1504 Wildwood Ln, Marshall, AR, 72650', CURRENT_TIMESTAMP);
INSERT INTO customer_address VALUES ('tskirvin@comcast.net', '67 County 395 Rd, Wynne, AR, 72396', CURRENT_TIMESTAMP);
INSERT INTO customer_address VALUES ('facet@me.com', '484 E 6th St, Smackover, AR, 71762', CURRENT_TIMESTAMP);

INSERT INTO customer_phoneNumber VALUES ('grady@mac.com', '841-6308', CURRENT_TIMESTAMP);
INSERT INTO customer_phoneNumber VALUES ('jdhildeb@verizon.net', '221-1728', CURRENT_TIMESTAMP);
INSERT INTO customer_phoneNumber VALUES ('irving@att.net', '574-0837', CURRENT_TIMESTAMP);

INSERT INTO company_personnel_customer VALUES ('facet@me.com', 'Aegean Airlines', '021-62-9215', '2016-02-01', CURRENT_TIMESTAMP);
INSERT INTO company_personnel_customer VALUES ('jdhildeb@verizon.net', 'Aegean Airlines',  '221-30-5258', '2015-08-03', CURRENT_TIMESTAMP);
INSERT INTO company_personnel_customer VALUES ('irving@att.net','Fiji Airways', ' 405-05-4368', '2015-09-01', CURRENT_TIMESTAMP);
INSERT INTO company_personnel_customer VALUES ('mwilson@live.com', 'Fiji Airways','499-08-3228', '2014-02-01', CURRENT_TIMESTAMP);
INSERT INTO company_personnel_customer VALUES ('marnanel@outlook.com','Fiji Airways', '574-18-0205', '2017-02-13', CURRENT_TIMESTAMP);

INSERT INTO agencySupportAgent VALUES (1 , 'Silvia', 'Payne', 0, CURRENT_TIMESTAMP);
INSERT INTO agencySupportAgent VALUES (2 , 'Anne', 'Dawson', 1, CURRENT_TIMESTAMP);
INSERT INTO agencySupportAgent VALUES (3 , 'Hope', 'Miles', 0, CURRENT_TIMESTAMP);
INSERT INTO agencySupportAgent VALUES (4 , 'Angel', 'Garrett', 1, CURRENT_TIMESTAMP);
INSERT INTO agencySupportAgent VALUES (5 , 'Leigh', 'Mcguire', 0, CURRENT_TIMESTAMP);
update agencySupportAgent set onlineStatus = 0  where firstName = "Anne";
update agencySupportAgent set onlineStatus = 1  where firstName = "Anne";
update agencySupportAgent set onlineStatus = 0  where firstName = "Anne";
update agencySupportAgent set onlineStatus = 1  where firstName = "Anne";

INSERT INTO agencySpecialist VALUES ('Ernestine', 'Cortez', '406-61-6024', '233-2901', 'Po Box 1843, Bentonville, AR, 72712', CURRENT_TIMESTAMP);
INSERT INTO agencySpecialist VALUES ('Marsha', 'Kelly', '412-93-1657', '457-9943', '4814 Willowridge Way, Rogers, AR, 72758 ', CURRENT_TIMESTAMP);
INSERT INTO agencySpecialist VALUES ('Juanita', 'Goodwin', '574-10-7019', '574-2009', '936 Bramblewood Ln, Cave Springs, AR, 72718', CURRENT_TIMESTAMP);
INSERT INTO agencySpecialist VALUES ('Colleen', 'Mathis', '219-71-4350', '202-7067', '413 E Lowell Ave, Cave Springs, AR, 72718', CURRENT_TIMESTAMP);

INSERT INTO agencySpecialist_PhoneNumber VALUES ('406-61-6024', '233-2902', CURRENT_TIMESTAMP);
INSERT INTO agencySpecialist_PhoneNumber VALUES ('574-10-7019', '574-2010', CURRENT_TIMESTAMP);

INSERT INTO agencySpecialist_PhoneNumber VALUES ('406-61-6024', '6400 Bridge Bay, Rogers, AR, 72758', CURRENT_TIMESTAMP);
INSERT INTO agencySpecialist_PhoneNumber VALUES ('219-71-4350', '1212 Sr 124, Russellville, AR, 72802', CURRENT_TIMESTAMP);

INSERT INTO flight VALUES (1, 'California', 'Texas', '2018-01-10 12:00:00', 45, 'Airbus A319', 300, 'Owen White', 100, 0, 'business', 'Regional Express');
INSERT INTO flight VALUES (2, 'Hawaii', 'Florida', '2018-01-11 18:00:00', 55, 'Bombardier Q400', 400, 'Jake Young', 200, 1, 'economy', 'Aegean Airlines');
INSERT INTO flight VALUES (3, 'Alaska', 'Colorado', '2018-01-12 13:30:00', 90, 'de Havilland Dash 8-100', 350, 'Mason Kennedy',300, 0, 'business', 'Garuda Indonesia');
INSERT INTO flight VALUES (4, 'Arizona', 'Virginia', '2018-01-13 19:30:00', 120, 'Airbus A320', 400, 'Jackson Wood', 200,1 , 'economy', 'Fiji Airways');
INSERT INTO flight VALUES (5, 'Georgia', 'Minnesota', '2018-01-14 20:00:00', 30, 'Airbus A319', 500, 'Stanley Mcdonald', 400, 0, 'business', 'Regional Express');
INSERT INTO flight VALUES (6, 'Michigan', 'Ohio', '2018-01-13 14:00:00', 40, 'Airbus A319', 400, 'Draven Foley', 100, 1, 'economy', 'Cathay Pacific');
INSERT INTO flight VALUES (7, 'Maryland', 'Oregon', '2018-01-15 16:00:00', 50, 'Airbus A321', 300, 'Malakai Bryan', 500, 0, 'business', 'Regional Express');
INSERT INTO flight VALUES (8, 'Tennessee', 'Utah', '2018-01-16 19:00:00', 60, 'Airbus A320', 300, 'Jordyn Jenkins', 600, 1, 'economy', 'Regional Express');
INSERT INTO flight VALUES (9, 'California', 'Texas', '2018-01-17 10:00:00', 45, 'Airbus A319', 300, 'Owen White', 300, 0, 'business', 'Regional Express');
INSERT INTO flight VALUES (10, 'California', 'Texas', '2018-01-10 02:00:00', 45, 'Bombardier Q400', 300, 'Owen White', 100, 0, 'economy', 'Regional Express');

INSERT INTO flight_2way VALUES ('2018-01-11 12:00:00', 45, 1);
INSERT INTO flight_2way VALUES ('2018-01-12 12:00:00', 55, 2);
INSERT INTO flight_2way VALUES ('2018-01-13 12:00:00', 90, 3);
INSERT INTO flight_2way VALUES ('2018-01-14 12:00:00', 120, 4);

INSERT INTO checkout_payment VALUES ('8824023890', 'Aegean Airlines', '2018-01-11', 800, CURRENT_TIMESTAMP);
INSERT INTO checkout_payment VALUES ('8248050572', 'Aegean Airlines', '2018-01-08', 900, CURRENT_TIMESTAMP);
INSERT INTO checkout_payment VALUES ('8328627849', 'Garuda Indonesia', '2018-01-11', 1000, CURRENT_TIMESTAMP);
INSERT INTO checkout_payment VALUES ('6535180338', 'Fiji Airways', '2018-01-10', 3000, CURRENT_TIMESTAMP);
INSERT INTO checkout_payment VALUES ('0674649066', 'Fiji Airways', '2018-01-12', 1300, CURRENT_TIMESTAMP);
INSERT INTO checkout_payment VALUES ('3900209760', 'Cathay Pacific', '2018-01-10', 500, CURRENT_TIMESTAMP);
INSERT INTO checkout_payment VALUES ('8158141854', 'Regional Express', '2018-01-10', 600, CURRENT_TIMESTAMP);

INSERT INTO companyAgent VALUES(1, 'Aegean Airlines', 'Terrell', 'Mcgee', '546-9442', '230 Pine Meadow Dr, Farmington, AR, 72730', '2016-01-06', CURRENT_TIMESTAMP);
INSERT INTO companyAgent VALUES(2, 'Aegean Airlines', 'Steve', '	Greer', '546-4478', '803 Jefferson Cir, Martinsville, VA, 24112' , '2017-11-23', CURRENT_TIMESTAMP);
INSERT INTO companyAgent VALUES(3, 'Garuda Indonesia', 'Joe', 'Porter', '569-4371', '159 Russell St, Florence, MS, 39073' , '2009-09-09', CURRENT_TIMESTAMP);
INSERT INTO companyAgent VALUES(4, 'Fiji Airways', 'Orville', 'Sanders', '446-8851', '5320 Blackburn St, Fort Smith, AR, 72903' , '2018-01-06', CURRENT_TIMESTAMP);
INSERT INTO companyAgent VALUES(5, 'Cathay Pacific', 'Patrick', 'West', '906-2721', '560 Timber Ridge St, Centerton, AR, 72719', '2015-02-26', CURRENT_TIMESTAMP);
INSERT INTO companyAgent VALUES(6, 'Regional Express', 'Herbert', 'Wright','925-1352', '830 Oakwood Ct, Centerton, AR, 72719' , '2018-01-18', CURRENT_TIMESTAMP);

INSERT INTO companyAgent_PhoneNumber VALUES(1, '224-6085', CURRENT_TIMESTAMP);
INSERT INTO companyAgent_PhoneNumber VALUES(5, ' 224-6116', CURRENT_TIMESTAMP);

INSERT INTO companyAgent_Address VALUES(2, '891 Walker St, Centerton, AR, 72719', CURRENT_TIMESTAMP);
INSERT INTO companyAgent_Address VALUES(3, '16741 Chickadee Ln, Gravette, AR, 72736', CURRENT_TIMESTAMP);

INSERT INTO Branch_PhoneNumber VALUES (1,'466-4026');
INSERT INTO Branch_PhoneNumber VALUES (1,'466-4027');
INSERT INTO Branch_PhoneNumber VALUES (2,'466-4028');
INSERT INTO Branch_PhoneNumber VALUES (2,'466-4029');
INSERT INTO Branch_PhoneNumber VALUES (3,'227-4823');
INSERT INTO Branch_PhoneNumber VALUES (3,'227-4824');
INSERT INTO Branch_PhoneNumber VALUES (4,'327-4823');
INSERT INTO Branch_PhoneNumber VALUES (5,'337-4822');
INSERT INTO Branch_PhoneNumber VALUES (5,'131-4823');
INSERT INTO Branch_PhoneNumber VALUES (6,'111-4823');
INSERT INTO Branch_PhoneNumber VALUES (7,'225-4823');
INSERT INTO Branch_PhoneNumber VALUES (8,'112-4823');
INSERT INTO Branch_PhoneNumber VALUES (8,'131-4823');
INSERT INTO Branch_PhoneNumber VALUES (9,'124-4823');
INSERT INTO Branch_PhoneNumber VALUES (9,'229-4823');
INSERT INTO Branch_PhoneNumber VALUES (10,'199-4823');
INSERT INTO Branch_PhoneNumber VALUES (11,'200-4823');
INSERT INTO Branch_PhoneNumber VALUES (12,'201-4823');
INSERT INTO Branch_PhoneNumber VALUES (12,'555-4823');
INSERT INTO Branch_PhoneNumber VALUES (13,'443-4823');
INSERT INTO Branch_PhoneNumber VALUES (14,'898-4823');
INSERT INTO Branch_PhoneNumber VALUES (15,'677-4823');

INSERT INTO Branch_Address VALUES (1,'7137 Essex St.Cedar Falls, IA 50613');
INSERT INTO Branch_Address VALUES (1,'956 Mechanic CourtRocky Mount, NC 27804');
INSERT INTO Branch_Address VALUES (2,'633 Morris DriveJupiter, FL 33458');
INSERT INTO Branch_Address VALUES (2,'2 SE. Plumb Branch St.Garland, TX 75043');
INSERT INTO Branch_Address VALUES (3,'8758 Garden Ave.Matthews, NC 28104');
INSERT INTO Branch_Address VALUES (3,'7708 Cottage DrivePawtucket, RI 02860');
INSERT INTO Branch_Address VALUES (4,'3 Locust DriveSimpsonville, SC 29680');
INSERT INTO Branch_Address VALUES (5,'57 Columbia Ave.Harlingen, TX 78552');
INSERT INTO Branch_Address VALUES (5,'58 Columbia Ave.Harlingen, TX 78552');
INSERT INTO Branch_Address VALUES (6,'51 East New DriveKennewick, WA 99337');
INSERT INTO Branch_Address VALUES (7,'317 Del Monte St.Union City, NJ 07087');
INSERT INTO Branch_Address VALUES (8,'833 Old Summerhouse St.Massapequa Park, NY 11762');
INSERT INTO Branch_Address VALUES (8,'7268 Military LaneBedford, OH 44146');
INSERT INTO Branch_Address VALUES (9,'833 Old Summerhouse St.Massapequa Park, NY 11762');
INSERT INTO Branch_Address VALUES (9,'66 Birchpond LaneGrand Haven, MI 49417');
INSERT INTO Branch_Address VALUES (10,'86 Alderwood StreetCedar Falls, IA 50613');
INSERT INTO Branch_Address VALUES (11,'659 Mountainview St.Pikesville, MD 21208');
INSERT INTO Branch_Address VALUES (12,'9924 Gulf StreetDuarte, CA 91010');
INSERT INTO Branch_Address VALUES (12,'8529 Jones Ave.Sugar Land, TX 77478');
INSERT INTO Branch_Address VALUES (13,'3 Sage St.Sanford, NC 27330');
INSERT INTO Branch_Address VALUES (14,'465 Bowman St.Satellite Beach, FL 32937');
INSERT INTO Branch_Address VALUES (15,'7137 Essex St.Cedar Falls, IA 50613');

INSERT INTO customer_flight VALUES ('blixem@sbcglobal.net', 1, 'cache',  218, '2018-01-10', CURRENT_TIMESTAMP);
INSERT INTO customer_flight VALUES ('blixem@sbcglobal.net', 9, 'credit',  327, '2018-01-10', CURRENT_TIMESTAMP);
INSERT INTO customer_flight VALUES ('blixem@sbcglobal.net', 10, 'credit',  109, '2018-01-09', CURRENT_TIMESTAMP);
INSERT INTO customer_flight VALUES ('blixem@sbcglobal.net', 3, 'credit',  327, '2018-01-09', CURRENT_TIMESTAMP);
INSERT INTO customer_flight VALUES ('carreras@msn.com', 3, 'credit',  327, '2018-01-10', CURRENT_TIMESTAMP);
INSERT INTO customer_flight VALUES ('facet@me.com', 2, 'cache',  218, '2018-01-10', CURRENT_TIMESTAMP);
INSERT INTO customer_flight VALUES ('facet@me.com', 1, 'credit',  109, '2018-01-01', CURRENT_TIMESTAMP);
INSERT INTO customer_flight VALUES ('facet@me.com', 7, 'credit',  545, '2018-01-01', CURRENT_TIMESTAMP);
INSERT INTO customer_flight VALUES ('facet@me.com', 5, 'credit',  436, '2018-01-01', CURRENT_TIMESTAMP);
INSERT INTO customer_flight VALUES ('jdhildeb@verizon.net', 3, 'credit',  327, '2018-01-11', CURRENT_TIMESTAMP);
INSERT INTO customer_flight VALUES ('carreras@msn.com', 9, 'cache',  327, '2018-01-16', CURRENT_TIMESTAMP);
INSERT INTO customer_flight VALUES ('carreras@msn.com', 6, 'cache',  109, '2018-01-16', CURRENT_TIMESTAMP);
INSERT INTO customer_flight VALUES ('carreras@msn.com', 4, 'cache',  218, '2018-01-16', CURRENT_TIMESTAMP);

INSERT INTO customer_supportAgent VALUES ('blixem@sbcglobal.net', 1, 'Acknowledgement', '2018-01-10 08:06:00', CURRENT_TIMESTAMP);
INSERT INTO customer_supportAgent VALUES ('mwilson@live.com', 2, 'Complaint', '2018-01-11 18:36:00', CURRENT_TIMESTAMP);
INSERT INTO customer_supportAgent VALUES ('marnanel@outlook.com', 1, 'Complaint', '2018-01-12 12:30:00', CURRENT_TIMESTAMP);
INSERT INTO customer_supportAgent VALUES ('marnanel@outlook.com', 1, 'Acknowledgement', '2018-01-10 12:30:00', CURRENT_TIMESTAMP);
INSERT INTO customer_supportAgent VALUES ('marnanel@outlook.com', 2, 'Acknowledgement', '2018-01-13 12:40:00', CURRENT_TIMESTAMP);

INSERT INTO flight_checkoutPayment VALUES (1 , '8824023890', CURRENT_TIMESTAMP);
INSERT INTO flight_checkoutPayment VALUES (4 , '3900209760', CURRENT_TIMESTAMP);
INSERT INTO flight_checkoutPayment VALUES (6 , '8158141854', CURRENT_TIMESTAMP);

INSERT INTO flight_company VALUES (2 , 'Garuda Indonesia', CURRENT_TIMESTAMP);
INSERT INTO flight_company VALUES (1 , 'Regional Express', CURRENT_TIMESTAMP);
INSERT INTO flight_company VALUES (5 , 'Regional Express', CURRENT_TIMESTAMP);
INSERT INTO flight_company VALUES (7 , 'Regional Express', CURRENT_TIMESTAMP);



INSERT INTO flight_company VALUES (3 , 'Regional Express', CURRENT_TIMESTAMP);