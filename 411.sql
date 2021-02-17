Project 1   
Saurav Adhikari

----------------------
create table Observers(
  pid integer,
  name char(20),
  primary key(pid)
  );
------------------------
INSERT INTO Observers(pid,name)
VALUES(10234,'Able');
INSERT INTO Observers(pid,name)
VALUES(11567,'Baker');
INSERT INTO Observers(pid,name)
VALUES(3289,'George');
INSERT INTO Observers(pid,name)
VALUES(88331,'Alice');

-----------------------
-----------------------
create table Meteorologists(
pid integer,
name char(20),
primary key(pid)
);
-----------------------
INSERT INTO Meteorologists(pid,name)
VALUES(74591,'Jane');
INSERT INTO Meteorologists(pid,name)
VALUES(17645,'Mary');
INSERT INTO Meteorologists(pid,name)
VALUES(10234,'Able');
-----------------------
-----------------------
create table Consumers(
pid integer,
name char(20),
primary key(pid)
);
-----------------------
INSERT INTO Consumers(pid,name)
VALUES(3289,'George');
INSERT INTO Consumers(pid,name)
VALUES(88331,'Alice');
INSERT INTO Consumers(pid,name)
VALUES(74591,'Jane');
INSERT INTO Consumers(pid,name)
VALUES(10234,'Able');
--------------------------
-------------------------
create table Outsider(
pid integer,
name char(20),
primary key(pid)
);
-----------------------
INSERT INTO Outsider(pid,name)
VALUES(2557,'Bill');
-------------------------
-------------------------
create table Address(
  pid integer,
  streetAddress char(20),
  city char(20),
  state char(10),
  primary key(streetAddress,city,state),
  foreign key (pid) references Observers (pid)
);
--------------------------
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(10234,'342 streetA','Monticello','MN');
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(11567,'344 streetA','Monticello','MN');
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(NULL ,'65 streetS','St. Cloud','MN');
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(3289,'892 streetM','Minneapolis','MN');
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(17645,'342 streetB','Monticello','MN');
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(88331,'342 streetC','Monticello','MN');
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(2557,'6 streetA','St. Paul','MN');
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(NULL ,'789 streetE','Duluth','MN');
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(74591,'999 streetG','Duluth','MN');
-----------------------------------------
--------------------------------
create table Forecast(
fid char(10),
city char(20),
high integer,
low integer,
forecast_date date,
primary key(fid)

--pid integer,  -- For FKs to link relationships called: views and presents
--oid integer, -- for FKs to link relationship called: makes

-- foreign key (pid) references Consumers (pid), -- Views
-- foreign key (pid) references Meteorologists (pid), -- Presents
-- foreign key (oid) references Observation (oid) -- Makes
);
--------------------------
INSERT INTO Forecast(fid, high, low, city, forecast_date)
VALUES('F02',30,17,'St. Cloud', TO_DATE('31-DEC-2020', 'DD-MON-YYYY'));
INSERT INTO Forecast(fid, high, low, city, forecast_date)
VALUES('F03',20,7,'Duluth', TO_DATE('31-DEC-2020', 'DD-MON-YYYY'));
INSERT INTO Forecast(fid, high, low, city, forecast_date)
VALUES('F04',37,30,'Minneapolis', TO_DATE('31-DEC-2020', 'DD-MON-YYYY'));
INSERT INTO Forecast(fid, high, low, city, forecast_date)
VALUES('F05',42,31,'St. Cloud', TO_DATE('30-NOV-2020', 'DD-MON-YYYY'));
INSERT INTO Forecast(fid, high, low, city, forecast_date)
VALUES('F08',81,56,'Duluth', TO_DATE('15-JAN-2021', 'DD-MON-YYYY'));
INSERT INTO Forecast(fid, high, low, city, forecast_date)
VALUES('F09',76,62,'Minneapolis', TO_DATE('15-JAN-2021', 'DD-MON-YYYY'));
INSERT INTO Forecast(fid, high, low, city, forecast_date)
VALUES('F15',95,72,'St. Cloud', TO_DATE('03-FEB-2021', 'DD-MON-YYYY'));
-----------------------------------------
--------------------------------



