CREATE TABLE Books (
  bookid INT PRIMARY KEY,
  title  VARCHAR(100) NOT NULL,
  author VARCHAR(50)  NOT NULL,
  year   INT
);
CREATE TABLE Customers (
  customerid VARCHAR(20) PRIMARY KEY,
  name  VARCHAR(50),
  email VARCHAR(100)
);
CREATE TABLE Purchases (
  customerid VARCHAR(20),
  bookid INT,
  year   INT,
  PRIMARY KEY (customerid, bookid),
  FOREIGN KEY (customerid) REFERENCES Customers(customerid),
  FOREIGN KEY (bookid) REFERENCES Books(bookid)
);
CREATE TABLE Reviews (
  customerid VARCHAR(20),
  bookid INT,
  rating INT,
  PRIMARY KEY (customerid, bookid),
  FOREIGN KEY (customerid) REFERENCES Customers(customerid),
  FOREIGN KEY (bookid) REFERENCES Books(bookid)
);
CREATE TABLE Pricing (
  bookid INT,
  format VARCHAR(20),
  price  INT,
  PRIMARY KEY (bookid, format),
  FOREIGN KEY (bookid) REFERENCES Books(bookid)
);
INSERT INTO Books (bookid, title, author, year) VALUES
  (1, 'BIOGRAPHY OF BENJAMIN FRANKLIN', 'EDMUND MORGAN', 1990),
  (2, 'BENJAMIN FRANKLIN', 'JOSEPH ELLIS', 1994),
  (3, 'LEGACY OF BENJAMIN FRANKLIN', 'STUDS TURKEL', 1998),
  (4, 'GEORGE WASHINGTON', 'EDMUND MORGAN', 1980),
  (5, 'BIOGRAPHY OF GEORGE WASHINGTON', 'STUDS TURKEL', 1990),
  (6, 'LEADERSHIP OF GEORGE WASHINGTON', 'JON MEACHAM', 2000),
  (7, 'AMERICAN PHOENIX: THOMAS JEFFERSON', 'JOSEPH ELLIS', 2001),
  (8, 'THOMAS JEFFERSON', 'EDMUND MORGAN', 1990),
  (9, 'THE AMERCIAN CIVIL WAR', 'JON MEACHAM', 2002),
  (10, 'CIVIL WAR STRUGGLES', 'EDMUND MORGAN', 1985),
  (11, 'CIVIL WAR: A RETROSPECTIVE', 'JOSEPH ELLIS', 1991),
  (12, 'ANALYSIS OF THE AMERICAN CIVIL WAR', 'STUDS TURKEL', 1988);

select * from Books;

INSERT INTO Customers (customerid, name, email) VALUES
  ('lellison', 'LARRY ELLISON', 'lellison@yahoo.com'),
  ('bgates', 'WILLIAM GATES', 'bgates@yahoo.com'),
  ('sjobs', 'STEVE JOBS', 'sjobs@yahoo.com'),
  ('smcnealy', 'SCOTT MCNEALY', 'smcnealy@yahoo.com'),
  ('jchambers', 'JOHN CHAMBERS', 'jchambers@yahoo.com');

select * from Customers;

INSERT INTO Purchases (customerid, bookid, year) VALUES
  ('lellison', 1, 1995),
  ('bgates', 1, 1997),
  ('jchambers', 1, 1997),
  ('sjobs', 1, 1994),
  ('smcnealy', 3, 2000),
  ('lellison', 4, 2002),
  ('jchambers', 4, 2002),
  ('bgates', 5, 2002),
  ('sjobs', 6, 2001),
  ('jchambers', 6, 2001),
  ('smcnealy', 6, 2003),
  ('lellison', 7, 2001),
  ('bgates', 8, 1995),
  ('jchambers', 8, 1995),
  ('smcnealy', 7, 2001),
  ('lellison', 10, 1990),
  ('bgates', 10, 1995),
  ('smcnealy', 10, 2003),
  ('bgates', 11, 2002),
  ('sjobs', 12, 2003),
  ('lellison', 12, 2002),
  ('bgates', 12, 2002),
  ('smcnealy', 12, 2003),
  ('jchambers', 12, 2003);

Select * from Purchases;

INSERT INTO Reviews (customerid, bookid, rating) VALUES
  ('lellison', 1, 3),
  ('bgates', 1, 5),
  ('jchambers', 1, 4),
  ('sjobs', 1, 1),
  ('smcnealy', 3, 5),
  ('lellison', 4, 4),
  ('jchambers', 4, 4),
  ('bgates', 5, 2),
  ('sjobs', 6, 2),
  ('jchambers', 6, 4),
  ('smcnealy', 6, 4),
  ('lellison', 7, 3),
  ('bgates', 8, 5),
  ('jchambers', 8, 4),
  ('smcnealy', 7, 3),
  ('lellison', 10, 1),
  ('bgates', 10, 5),
  ('smcnealy', 10, 2),
  ('bgates', 11, 4),
  ('sjobs', 12, 5),
  ('lellison', 12, 2),
  ('bgates', 12, 4),
  ('smcnealy', 12, 5),
  ('jchambers', 12, 4);

  Select * from Reviews;

  INSERT INTO Pricing (bookid, format, price) VALUES
  (1, 'HARD COVER', 20),
  (1, 'PAPERBACK', 12),
  (1, 'AUDIO', 15),
  (2, 'HARD COVER', 24),
  (2, 'PAPERBACK', 11),
  (2, 'AUDIO', 13),
  (3, 'HARD COVER', 27),
  (3, 'PAPERBACK', 15),
  (4, 'HARD COVER', 19),
  (4, 'PAPERBACK', 11),
  (5, 'HARD COVER', 20),
  (5, 'PAPERBACK', 14),
  (6, 'HARD COVER', 21),
  (6, 'PAPERBACK', 17),
  (7, 'HARD COVER', 22),
  (7, 'PAPERBACK', 13),
  (8, 'HARD COVER', 14),
  (8, 'PAPERBACK', 7),
  (9, 'HARD COVER', 16),
  (9, 'PAPERBACK', 9),
  (9, 'AUDIO', 15),
  (10, 'HARD COVER', 22),
  (11, 'PAPERBACK', 13),
  (11, 'AUDIO', 15),
  (12, 'HARD COVER', 30),
  (12, 'AUDIO', 25);

  Select * from Pricing;