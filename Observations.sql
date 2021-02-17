create table Observations(
  oid integer,
  date char(20),
  temperature integer,
  humidity integer,
  percipitation double,
  street char(20),
  city char(20),
  state char(20),
  pid integer,
  method char(20),
  primary key(iod),
  foreign key(pid) references observers(pid)
);
----------------------------
------------------------------------
/*
INSERT INTO Observations(oid, date, temperature, humidity, precipitation, street, city, state, pid, method) 
VALUES(2,'12/30/20',32,40,0.1,'65 streetS','St.Cloud','MN','11567','notebook');
/*INSERT INTO Observations(oid, date, temperature, humidity, precipitation, street, city, state, pid, method) 
VALUES(4,'12/30/20',10,20,0.0,798,'streetE','Duluth','MN','88331','online');
INSERT INTO Observations(oid, date, temperature, humidity, precipitation, street, city, state, pid, method) 
VALUES(6,'12/30/20',32,50,1.5,892,'streetM','Minneapolis','MN','3289','online');
INSERT INTO Observations(oid, date, temperature, humidity, precipitation, street, city, state, pid, method) 
VALUES(8,'11/29/20',42,29,0.0,65,'streetS','St.Cloud','MN','11567','notebook');
INSERT INTO Observations(oid, date, temperature, humidity, precipitation, street, city, state, pid, method) 
VALUES(10,'1/14/21',5,41,0.0,798,'streetE','Duluth','MN','88331','online');
INSERT INTO Observations(oid, date, temperature, humidity, precipitation, street, city, state, pid, method) 
VALUES(12,'1/14/21',15,45,0.0,892,'streetM','Minneapolis','MN','3289','online');
INSERT INTO Observations(oid, date, temperature, humidity, precipitation, street, city, state, pid, method) 
VALUES(14,'2/2/21',16,63,2.0,65,'streetS','St.Cloud','MN','11567','notebook');
INSERT INTO Observations(oid, date, temperature, humidity, precipitation, street, city, state, pid, method) 
VALUES(16,'12/31/20',16,40,0.1,65,'streetS','St.Cloud','MN','11567','notebook');
INSERT INTO Observations(oid, date, temperature, humidity, precipitation, street, city, state, pid, method) 
VALUES(18,'12/31/20',19,20,0.0,798,'streetE','Duluth','MN','88331','online');
INSERT INTO Observations(oid, date, temperature, humidity, precipitation, street, city, state, pid, method) 
VALUES(20,'12/31/20',38,49,1.5,892,'streetM','Minneapolis','MN','3289','online');
INSERT INTO Observations(oid, date, temperature, humidity, precipitation, street, city, state, pid, method) 
VALUES(22,'11/30/20',39,29,0.0,65,'streetS','St.Cloud','MN','11567','notebook');
INSERT INTO Observations(oid, date, temperature, humidity, precipitation, street, city, state, pid, method) 
VALUES(30,'1/15/21',12,50,3.0,798,'streetE','Duluth','MN','88331','notebook');
INSERT INTO Observations(oid, date, temperature, humidity, precipitation, street, city, state, pid, method) 
VALUES(32,'11/15/21',27,45,0.0,892,'streetM','Minneapolis','MN','3289','online');
INSERT INTO Observations(oid, date, temperature, humidity, precipitation, street, city, state, pid, method) 
VALUES(34,'2/3/21',33,63,0.0,65,'streetS','St.Cloud','MN','11567','notebook'); */