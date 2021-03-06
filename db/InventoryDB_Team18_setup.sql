/* Deliverable 4
*  Team 18
*  Jonah Cole, Ryan Cluff, Dylan Sund
*/

CREATE TABLE CUSTOMER(
Email VARCHAR(50) NOT NULL,
Name VARCHAR(50 NOT NULL,
Address VARCHAR(50),
PhoneNumber VARCHAR(11),
PRIMARY KEY(Email));

CREATE TABLE EMPLOYEE(
SSN CHAR(9) NOT NULL,
Name VARCHAR(50) NOT NULL,
Address VARCHAR(50),
PhoneNumber VARCHAR(11),
PRIMARY KEY(SSN));

CREATE TABLE CUSTOMER_ORDER(
OrderId VARCHAR(25) NOT NULL,
CEmail VARCHAR(50),
DatePlaced Date NOT NULL,
FOREIGN KEY(CEmail) REFERENCES CUSTOMER(Email),
PRIMARY KEY(OrderId));

CREATE TABLE PRODUCT(
ProductId VARCHAR(30) NOT NULL,
Name VARCHAR(50),
Price VARCHAR(10),
Description VARCHAR(255),
PRIMARY KEY(ProductId));

CREATE TABLE LOCATION(
LocationId VARCHAR(25) NOT NULL,
Address VARCHAR(50),
PhoneNumber VARCHAR(11),
PRIMARY KEY(LocationId));

CREATE TABLE ORDER_CONTAINS(
OrderId VARCHAR(25) NOT NULL,
ProductId VARCHAR(30) NOT NULL,
ItemCount INT,
FOREIGN KEY(OrderId) REFERENCES CUSTOMER_ORDER(OrderId),
FOREIGN KEY(ProductId) REFERENCES PRODUCT(ProductId),
PRIMARY KEY(OrderId, ProductId));

CREATE TABLE FULFILLED_BY(
OrderId VARCHAR(25) NOT NULL,
eSSN CHAR(9) NOT NULL,
FOREIGN KEY(OrderId) REFERENCES CUSTOMER_ORDER(OrderId),
FOREIGN KEY(eSSN) REFERENCES EMPLOYEE(SSN),
PRIMARY KEY(OrderId, eSSN));

CREATE TABLE WORKS_AT(
LocationId VARCHAR(25) NOT NULL,
eSSN CHAR(9) NOT NULL,
FOREIGN KEY(LocationId) REFERENCES LOCATION(LocationId),
FOREIGN KEY(eSSN) REFERENCES EMPLOYEE(SSN),
PRIMARY KEY(LocationId, eSSN));

CREATE TABLE STORED_AT(
LocationId VARCHAR(50) NOT NULL,
ProductId VARCHAR(30) NOT NULL,
ItemCount INT,
FOREIGN KEY(LocationId) REFERENCES LOCATION(LocationId),
FOREIGN KEY(ProductId) REFERENCES PRODUCT(ProductId),
PRIMARY KEY(LocationId, ProductId));

INSERT INTO `CUSTOMER` (`Email`, `Name`, `Address`, `PhoneNumber`)
VALUES ('johnsmith@yahoo.com', 'John Smith', '3245 1st St.', '555-2398'),
('laurenwalker@gmail.com', 'Lauren Walker', '7634 Main St.', '555-4602'),
('fionamills@yahoo.com', 'Fiona Mills', '8904 Vine St.', '555-3100'),
('brianterry@gmail.com', 'Brian Terry', '5672 4th St.', '555-8862'),
('jakejohn@gmail.com', 'Jake Johnson', '1234 2nd Ave.', '555-1111'),
('otisfraser@gmail.com', 'Otis Fraser', '5674 4th St.', '555-2222'),
('willdavenport@hotmail.com', 'Will Davenport', '7575 75th St.', '555-7575'),
('abbywaters@gmail.com', 'Abby Waters', '1246 S North Ave.', '555-2020'),
('lylahoneal@asu.edu', 'Lylah Oneal', '1000 45th St.', '555-3333'),
('dannyfenton@gmail.com', 'Danny Fenton', '9090 Western Ln.', '555-2345'),
('jazzfenton@gmail.com', 'Jazz Fenton', '9090 Western Ln.', '555-5432');

INSERT INTO `EMPLOYEE` (`SSN`, `Name`, `Address`, `PhoneNumber`)
VALUES ('235860997', 'Irene McLean', '9879 8th St.', '555-0987'),
('806673741', 'Audrey Paige', '3249 Oak St.', '555-1423'),
('694309625', 'Colin Reese', '3199 Main St.', '555-0192'),
('230556361', 'Toby Henson', '4756 Street St.', '555-8908'),
('990256500', 'Liam Ellison', '1245 1st St.', '555-1100'),
('473268109', 'Jack Thomas', '1188 Western Ln.', '555-1758'),
('237954850', 'Izzy Ridley', '2340 1st St.', '555-1175'),
('616109906', 'Peter Parker', '2360 10th St.', '555-1255'),
('856863186', 'Ryan Cole', '2432 9th St.', '555-2121'),
('859757246', 'Dylan Cluff', '1240 1st St.', '555-3364'),
('924118573', 'Jonah Sund', '1110 25th St.', '555-0096'),
('330715626', 'Robert Ruiz', '6576 21st St.', '555-8700'),
('347734764', 'Hayden Euper', '1738 North St.', '555-4344'),
('596064274', 'Lance Fields', '9240 Snowy St.', '555-0465'),
('936867482', 'Sheila Robins', '2560 Devil Way', '555-2381'),
('876543210', 'Poppy Rowe', '4390 Sparky Ave.', '555-9595');

INSERT INTO `CUSTOMER_ORDER` (`OrderId`, `CEmail`, `DatePlaced`)
VALUES ('001', 'johnsmith@yahoo.com', '2020-01-15'),
('002', 'laurenwalker@gmail.com', '2020-01-20'),
('003', 'fionamills@yahoo.com', '2020-01-27'),
('004', 'otisfraser@gmail.com', '2020-02-05'),
('005', 'brianterry@gmail.com', '2020-02-11'),
('006', 'jakejohn@gmail.com', '2020-02-13'),
('007', 'laurenwalker@gmail.com', '2020-02-17'),
('008', 'jazzfenton@gmail.com', '2020-03-10'),
('009', 'willdavenport@hotmail.com', '2020-03-13'),
('010', 'lylahoneal@asu.edu', '2020-03-22'),
('011', 'brianterry@gmail.com', '2020-03-25'),
('012', 'abbywaters@gmail.com', '2020-03-28'),
('013', 'dannyfenton@gmail.com', '2020-04-02'),
('014', 'fionamills@yahoo.com', '2020-04-12'),
('015', 'jazzfenton@gmail.com', '2020-05-02'),
('016', 'dannyfenton@gmail.com', '2020-05-08'),
('017', 'brianterry@gmail.com', '2020-06-17'),
('018', 'abbywaters@gmail.com', '2020-06-24');

INSERT INTO `PRODUCT` (`ProductId`, `Name`, `Price`, `Description`)
VALUES ('7856', 'Hand Sanitizer', '3.00', 'Sanitizes hands.'),
('6845', 'Face Mask', '12.00', 'Keeps the user''s germs contained close to them.'),
('6792', 'Hand Soap', '2.00', 'Cleanses hands.'),
('9551', 'Gloves', '25.00', 'Pack of 75 pairs. Cover hands to protect from germs.'),
('0189', 'Gauze', '2.00', 'Covers and protects wounds.'),
('6516', 'Thermometer', '10.00', 'Reads a patient"s temperature.'),
('7405', 'Crutches', '30.00', 'Helps the patient walk.'),
('1994', 'Bandage', '20.00', 'Pack of 200. Protects wounds.'),
('0293', 'Humidifier', '45.00', 'Increases room humidity.'),
('8151', 'Scalpel', '50.00', 'Pack of 100. Warning: Very Sharp. Medical Use Only.'),
('4960', 'Stretcher', '150.00', 'Support a patient that can''t walk.'),
('0170', 'Heating Pad', '20.00', 'Electric heating pad to promote blood flow.'),
('0335', 'Scissors', '15.00', 'Medical grade scissors.'),
('1234', 'Towel', '10.00', '3ft x 6ft white towel.'),
('0677', 'Needle', '50.00', 'Pack of 500 needles.');

INSERT INTO `ORDER_CONTAINS` (`OrderId`, `ProductId`, `ItemCount`)
VALUES ('001', '6845', 5),
('002', '8151', 1),
('003', '1234', 2),
('004', '1994', 20),
('005', '7405', 4),
('006', '0293', 2),
('007', '9551', 10),
('008', '0335', 3),
('009', '7856', 25),
('010', '7856', 14),
('011', '8151', 4),
('012', '7405', 6),
('013', '9551', 12),
('014', '8151', 18),
('015', '7856', 7),
('016', '1994', 1),
('017', '0677', 4),
('018', '9551', 12);

INSERT INTO `FULFILLED_BY` (`OrderId`, `eSSN`)
VALUES ('001', '235860997'),
('002', '859757246'),
('003', '230556361'),
('004', '990256500'),
('005', '473268109'),
('006', '876543210'),
('007', '936867482'),
('008', '347734764'),
('009', '806673741'),
('010', '806673741'),
('011', '694309625'),
('012', '473268109'),
('013', '616109906'),
('014', '694309625'),
('015', '806673741'),
('016', '990256500'),
('017', '330715626'),
('018', '616109906');

INSERT INTO `LOCATION` (`LocationId`, `Address`, `PhoneNumber`)
VALUES ('Phoenix', '0099 E 4th St.', '555-0456'),
('Peoria', '2288 2nd St.', '555-1106'),
('Tempe', '3377 Angel St.', '555-2205'),
('Tucson', '4466 20th St.', '555-3780'),
('Flagstaff', '6867 Union St.', '555-9994'),
('Williams', '9191 Bill St.', '555-8855'),
('Glendale', '3459 Bell Rd.', '555-3567'),
('Surprise', '5858 110th Ave.', '555-0000'),
('Scottsdale', '1234 Thunderbird Rd.', '555-6000');

INSERT INTO `WORKS_AT` (`LocationId`, `eSSN`)
VALUES ('Phoenix', '235860997'),
('Peoria', '806673741'),
('Tempe', '694309625'),
('Flagstaff', '230556361'),
('Williams', '990256500'),
('Glendale', '473268109'),
('Tucson', '237954850'),
('Surprise', '616109906'),
('Scottsdale', '856863186'),
('Phoenix', '859757246'),
('Scottsdale', '924118573'),
('Flagstaff', '330715626'),
('Scottsdale', '347734764'),
('Phoenix', '596064274'),
('Surprise', '936867482'),
('Phoenix', '876543210');

INSERT INTO `STORED_AT` (`LocationId`, `ProductId`, `ItemCount`)
VALUES ('Phoenix', '6845', 5106),
('Scottsdale', '6845', 587),
('Tempe', '8151', 534),
('Phoenix', '8151', 3056),
('Flagstaff', '1234', 122),
('Williams', '1994', 258),
('Glendale', '7405', 403),
('Tucson', '0293', 276),
('Phoenix', '0293', 2800),
('Surprise', '9551', 377),
('Scottsdale', '0335', 544),
('Peoria', '7856', 259),
('Phoenix', '7856', 4860),
('Tempe', '8151', 155),
('Scottsdale', '7405', 650),
('Surprise', '9551', 211),
('Tempe', '8151', 105),
('Tucson', '7856', 400),
('Phoenix', '1994', 1035),
('Flagstaff', '0677', 685),
('Peoria', '9551', 230);
