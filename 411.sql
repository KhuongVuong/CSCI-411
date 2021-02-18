--Project 1--   
--Saurav Adhikari--
--Khuong Vuong--
--Joseph Winkler--

--CREATING PERSON TABLE--
create table Person( 
pid integer,
name char(20),
primary key(pid)
);
-----------------------
INSERT INTO Person(pid,name)
VALUES(10234,'Able');
INSERT INTO Person(pid,name)
VALUES(11567,'Baker');
INSERT INTO Person(pid,name)
VALUES(3289,'George');
INSERT INTO Person(pid,name)
VALUES(88331,'Alice');
INSERT INTO Person(pid,name)
VALUES(17645,'Mary');
INSERT INTO Person(pid,name)
VALUES(74591,'Jane');
INSERT INTO Person(pid,name)
VALUES(2557,'Bill');
-----------------------
-----------------------

--CREATING OBSERVERS TABLE--
create table Observers(
pid integer,
primary key(pid),
foreign key (pid) references Person (pid)
);
-----------------------
INSERT INTO Observers(pid)
VALUES(10234);
INSERT INTO Observers(pid)
VALUES(11567);
INSERT INTO Observers(pid)
VALUES(3289);
INSERT INTO Observers(pid)
VALUES(88331);
-----------------------
-----------------------

--CREATING METEOROLOGISTS TABLE--
create table Meteorologists(
pid integer,
primary key(pid),
foreign key (pid) references Person (pid)
);
-----------------------
INSERT INTO Meteorologists(pid)
VALUES(74591);
INSERT INTO Meteorologists(pid)
VALUES(17645);
INSERT INTO Meteorologists(pid)
VALUES(10234);
-----------------------
-----------------------

--CREATING CONSUMERS TABLE--
create table Consumers(
pid integer,
primary key(pid),
foreign key (pid) references Person (pid)
);
-----------------------
INSERT INTO Consumers(pid)
VALUES(3289);
INSERT INTO Consumers(pid)
VALUES(88331);
INSERT INTO Consumers(pid)
VALUES(74591);
INSERT INTO Consumers(pid)
VALUES(10234);
-----------------------
-----------------------

--CREATING ADDRESS TABLE--
create table Address(
  pid integer,
  streetAddress char(20),
  city char(20),
  state char(10),
  primary key(streetAddress,city,state),
  foreign key (pid) references Person (pid)
);
--------------------------
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(10234,'342 streetA','Monticello','MN');
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(11567,'344 streetA','Monticello','MN');
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(NULL ,'65 streetS','St.Cloud','MN');
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(3289,'892 streetM','Minneapolis','MN');
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(17645,'342 streetB','Monticello','MN');
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(88331,'342 streetC','Monticello','MN');
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(2557,'6 streetA','St.Paul','MN');
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(NULL ,'798 streetE','Duluth','MN');
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(74591,'999 streetG','Duluth','MN');
-----------------------------------------
--------------------------------

--CREATING FORECAST TABLE--
create table Forecast(
fid char(10),
city char(20),
high integer,
low integer,
forecast_date date,
primary key(fid)
);
--------------------------
INSERT INTO Forecast(fid, high, low, city, forecast_date)
VALUES('F02',30,17,'St.Cloud', TO_DATE('31-DEC-2020', 'DD-MON-YYYY'));
INSERT INTO Forecast(fid, high, low, city, forecast_date)
VALUES('F03',20,7,'Duluth', TO_DATE('31-DEC-2020', 'DD-MON-YYYY'));
INSERT INTO Forecast(fid, high, low, city, forecast_date)
VALUES('F04',37,30,'Minneapolis', TO_DATE('31-DEC-2020', 'DD-MON-YYYY'));
INSERT INTO Forecast(fid, high, low, city, forecast_date)
VALUES('F05',42,31,'St.Cloud', TO_DATE('30-NOV-2020', 'DD-MON-YYYY'));
INSERT INTO Forecast(fid, high, low, city, forecast_date)
VALUES('F08',81,56,'Duluth', TO_DATE('15-JAN-2021', 'DD-MON-YYYY'));
INSERT INTO Forecast(fid, high, low, city, forecast_date)
VALUES('F09',76,62,'Minneapolis', TO_DATE('15-JAN-2021', 'DD-MON-YYYY'));
INSERT INTO Forecast(fid, high, low, city, forecast_date)
VALUES('F15',95,72,'St.Cloud', TO_DATE('03-FEB-2021', 'DD-MON-YYYY'));
-----------------------------------------
--------------------------------
                                       
--CREATING WARNINGS TABLE--                                       
create table Warnings(
wwid char(10),
w_date date,
city char(20),
description char(50),
Primary key(wwid)
);
-----------------------------------------
INSERT INTO Warnings(wwid, description, city, w_date)
VALUES('W03','Winter Storm Warning','Duluth', TO_DATE('31-DEC-2020', 'DD-MON-YYYY'));
INSERT INTO Warnings(wwid, description, city, w_date)
VALUES('W08','Flood Warning','Duluth', TO_DATE('15-JAN-2021', 'DD-MON-YYYY'));
INSERT INTO Warnings(wwid, description, city, w_date)
VALUES('W15','Cold Warning','St.Cloud', TO_DATE('05-FEB-2021', 'DD-MON-YYYY'));
-----------------------------------------
--------------------------------
                                                
--CREATING PRESENTS TABLE--                                                 
create table Presents(
pid integer,
fid char(10),
primary key(pid, fid),
foreign key (pid) references Meteorologists (pid),
foreign key (fid) references Forecast (fid)
);
-----------------------------------------
INSERT INTO Presents(pid, fid)
VALUES(17645,'F02');
INSERT INTO Presents(pid, fid)
VALUES(17645,'F03');
INSERT INTO Presents(pid, fid)
VALUES(17645,'F04');
INSERT INTO Presents(pid, fid)
VALUES(17645,'F05');
INSERT INTO Presents(pid, fid)
VALUES(17645,'F08');
INSERT INTO Presents(pid, fid)
VALUES(17645,'F09');
INSERT INTO Presents(pid, fid)
VALUES(17645,'F15');
INSERT INTO Presents(pid, fid)
VALUES(10234,'F04');
INSERT INTO Presents(pid, fid)
VALUES(10234,'F09');
-----------------------------------------
--------------------------------
                                                
--CREATING VIEWED TABLE--                                                 
create table Viewed(
pid integer,
fid char(10),
primary key(pid, fid),
foreign key (pid) references Consumers (pid),
foreign key (fid) references Forecast (fid)
);
-----------------------------------------
INSERT INTO Viewed(pid, fid)
VALUES(3289,'F04');
INSERT INTO Viewed(pid, fid)
VALUES(3289,'F09');
INSERT INTO Viewed(pid, fid)
VALUES(10234,'F02');
INSERT INTO Viewed(pid, fid)
VALUES(10234,'F09');
INSERT INTO Viewed(pid, fid)
VALUES(88331,'F03');
INSERT INTO Viewed(pid, fid)
VALUES(88331,'F04');
-----------------------------------------
--------------------------------  
                                                
--CREATING OBSERVATIONS TABLE--                                                 
create table Observations(
  oid integer,
  ob_date date,
  temperature integer,
  humidity integer,
  precipitation float,
  streetAddress char(20),
  city char(20),
  method char(20),
  state char(10),
  pid integer,
  primary key(oid),
  foreign key(pid) references observers(pid),
  foreign key(streetAddress,city,state) references address(streetAddress,city,state)
);
----------------------------
------------------------------------
INSERT INTO Observations(oid, ob_date, temperature, humidity, precipitation, streetAddress, city, state, pid, method)
VALUES(2,TO_DATE('30-DEC-2020','DD-MON-YYYY'),32,40,0.1,'65 streetS','St.Cloud','MN','11567','notebook');
INSERT INTO Observations(oid, ob_date, temperature, humidity, precipitation, streetAddress, city, state, pid, method)
VALUES(4,TO_DATE('30-DEC-2020','DD-MON-YYYY'),10,20,0.0,'798 streetE','Duluth','MN','88331','online');
INSERT INTO Observations(oid, ob_date, temperature, humidity, precipitation, streetAddress, city, state, pid, method)
VALUES(6,TO_DATE('30-DEC-2020','DD-MON-YYYY'),32,50,1.5,'892 streetM','Minneapolis','MN','3289','online');
INSERT INTO Observations(oid, ob_date, temperature, humidity, precipitation, streetAddress, city, state, pid, method)
VALUES(8,TO_DATE('29-NOV-2020','DD-MON-YYYY'),42,29,0.0,'65 streetS','St.Cloud','MN','11567','notebook');
INSERT INTO Observations(oid, ob_date, temperature, humidity, precipitation, streetAddress, city, state, pid, method)
VALUES(10,TO_DATE('14-JAN-2021','DD-MON-YYYY'),5,41,0.0,'798 streetE','Duluth','MN','88331','online');
INSERT INTO Observations(oid, ob_date, temperature, humidity, precipitation, streetAddress, city, state, pid, method)
VALUES(12,TO_DATE('14-JAN-2021','DD-MON-YYYY'),15,45,0.0,'892 streetM','Minneapolis','MN','3289','online');
INSERT INTO Observations(oid, ob_date, temperature, humidity, precipitation, streetAddress, city, state, pid, method)
VALUES(14,TO_DATE('2-FEB-2021','DD-MON-YYYY'),16,63,2.0,'65 streetS','St.Cloud','MN','11567','notebook');
INSERT INTO Observations(oid, ob_date, temperature, humidity, precipitation, streetAddress, city, state, pid, method)
VALUES(16,TO_DATE('31-DEC-2020','DD-MON-YYYY'),16,40,0.1,'65 streetS','St.Cloud','MN','11567','notebook');
INSERT INTO Observations(oid, ob_date, temperature, humidity, precipitation, streetAddress, city, state, pid, method)
VALUES(18,TO_DATE('31-DEC-2020','DD-MON-YYYY'),19,20,0.0,'798 streetE','Duluth','MN','88331','online');
INSERT INTO Observations(oid, ob_date, temperature, humidity, precipitation, streetAddress, city, state, pid, method)
VALUES(20,TO_DATE('31-DEC-2020','DD-MON-YYYY'),38,49,1.5,'892 streetM','Minneapolis','MN','3289','online');
INSERT INTO Observations(oid, ob_date, temperature, humidity, precipitation, streetAddress, city, state, pid, method)
VALUES(22,TO_DATE('30-NOV-2020','DD-MON-YYYY'),39,29,0.0,'65 streetS','St.Cloud','MN','11567','notebook');
INSERT INTO Observations(oid, ob_date, temperature, humidity, precipitation, streetAddress, city, state, pid, method)
VALUES(30,TO_DATE('15-JAN-2021','DD-MON-YYYY'),12,50,3.0,'798 streetE','Duluth','MN','88331','notebook');
INSERT INTO Observations(oid, ob_date, temperature, humidity, precipitation, streetAddress, city, state, pid, method)
VALUES(32,TO_DATE('15-JAN-2021','DD-MON-YYYY'),27,45,0.0,'892 streetM','Minneapolis','MN','3289','online');
INSERT INTO Observations(oid, ob_date, temperature, humidity, precipitation, streetAddress, city, state, pid, method)
VALUES(34,TO_DATE('3-FEB-2021','DD-MON-YYYY'),33,63,0.0,'65 streetS','St.Cloud','MN','11567','notebook');
-------------------------------------------
----------------------------------------------
                                                
--CREATING WEATHER SERVICE TABLE--                                                 
create table Wservice(
    wid integer,
    w_name char(30),
    primary key(wid)
);
------------------------------
--------------------------
INSERT INTO Wservice(wid, w_name)
VALUES (200, 'Minnesota Weather Service');
INSERT INTO Wservice(wid, w_name)
VALUES (400, 'Central U.S. Weather Service');
INSERT INTO Wservice(wid, w_name)
VALUES (600, 'Canadian Weather Service');
-------------------------------------
--------------------------------------
                                                
--CREATING RECORDS TABLE--                                                 
create table Records(
fid char(10),
wid integer,
oid integer,
primary key(fid, wid, oid),
foreign key(fid) references Forecast(fid),
foreign key(wid) references Wservice(wid),
foreign key(oid) references Observations(oid)
);
--------------------------------------
------------------------------------------------
INSERT INTO Records(fid, wid, oid)
VALUES('F02',200,2);
INSERT INTO Records(fid, wid, oid)
VALUES('F03',600,4);
INSERT INTO Records(fid, wid, oid)
VALUES('F03',600,2);
INSERT INTO Records(fid, wid, oid)
VALUES('F04',400,6);
INSERT INTO Records(fid, wid, oid)
VALUES('F04',400,2);
INSERT INTO Records(fid, wid, oid)
VALUES('F05',200,8);
INSERT INTO Records(fid, wid, oid)
VALUES('F08',600,10);
INSERT INTO Records(fid, wid, oid)
VALUES('F09',400,12);
INSERT INTO Records(fid, wid, oid)
VALUES('F15',200,14);
-----------------------------------------
----------------------------------------
                                                
--CREATING ISSUED TABLE--                                                 
create table Issued(
wid integer,
wwid char(10),
primary key(wid, wwid),
foreign key(wid) references Wservice(wid),
foreign key(wwid) references Warnings(wwid)
);
--------------------------------------
------------------------------------------------
INSERT INTO Issued(wid, wwid)
VALUES(200,'W03');
INSERT INTO Issued(wid, wwid)
VALUES(200,'W08');
INSERT INTO Issued(wid, wwid)
VALUES(600,'W15');
-----------------------------------------
---------------------------------------  
                                                
--CREATING MAKES TABLE--                                              
create table Makes(
wid integer,
fid char(10),
oid integer,
primary key(wid, fid,oid),
foreign key(wid) references Wservice(wid),
foreign key(fid) references forecast(fid),
foreign key(oid) references Observations(oid)
);
-----------------------------------------
--------------------------------------- 
 INSERT INTO Makes(fid, wid, oid)
VALUES('F02',200,2);
INSERT INTO Makes(fid, wid, oid)
VALUES('F03',600,4);
INSERT INTO Makes(fid, wid, oid)
VALUES('F03',600,2);
INSERT INTO Makes(fid, wid, oid)
VALUES('F04',400,6);
INSERT INTO Makes(fid, wid, oid)
VALUES('F04',400,2);
INSERT INTO Makes(fid, wid, oid)
VALUES('F05',200,8);
INSERT INTO Makes(fid, wid, oid)
VALUES('F08',600,10);
INSERT INTO Makes(fid, wid, oid)
VALUES('F09',400,12);
INSERT INTO Makes(fid, wid, oid)
VALUES('F15',200,14);                                               
-----------------------------------------
--------------------------------------- 
                                                
--CREATING LIVESAT TABLE--                                                
create table livesAt(
pid integer,
streetAddress char(20),
city char(20),
state char(10),
primary key(pid, streetAddress,city, state),
foreign key (pid) references Person (pid),
foreign key (streetAddress,city, state) references Address (streetAddress,city, state)
);
-----------------------------------------
INSERT INTO LivesAt(pid,streetAddress,city,state) 
VALUES(10234,'342 streetA','Monticello','MN');
INSERT INTO LivesAt(pid,streetAddress,city,state) 
VALUES(11567,'344 streetA','Monticello','MN');
INSERT INTO LivesAt(pid,streetAddress,city,state) 
VALUES(3289,'892 streetM','Minneapolis','MN');
INSERT INTO LivesAt(pid,streetAddress,city,state) 
VALUES(17645,'342 streetB','Monticello','MN');
INSERT INTO LivesAt(pid,streetAddress,city,state) 
VALUES(88331,'342 streetC','Monticello','MN');
INSERT INTO LivesAt(pid,streetAddress,city,state) 
VALUES(2557,'6 streetA','St.Paul','MN');
INSERT INTO LivesAt(pid,streetAddress,city,state) 
VALUES(74591,'999 streetG','Duluth','MN');                                                
