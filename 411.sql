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
VALUES( ,'65 streetS','StCloud','MN');
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(3289,'892 streetM','Minneapolis','MN');
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(17645,'342 streetB','Monticello','MN');
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(88331,'342 streetC','Monticello','MN');
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(2557,'6 streetA','StPaul','MN');
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES( ,'789 streetE','Duluth','MN');
INSERT INTO Address(pid,streetAddress,city,state) 
VALUES(74591,'999 streetG','Duluth','MN');
-----------------------------------------
--------------------------------



