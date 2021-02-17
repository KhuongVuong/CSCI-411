
create table Records(
pid integer,
oid integer,
method char(20),
primary key(pid, oid),
foreign key (pid) references Observers (pid),
foreign key (oid) references Observations (oid)
);

/*
------------------------------------------------
INSERT INTO Records(oid, pid, method)
VALUES(2,11567,'notebook');
INSERT INTO Records(oid, pid, method)
VALUES(4,88331,'online');
INSERT INTO Records(oid, pid, method)
VALUES(6,3289,'online');
INSERT INTO Records(oid, pid, method)
VALUES(8,11567,'notebook');
INSERT INTO Records(oid, pid, method)
VALUES(10,88331,'online');
INSERT INTO Records(oid, pid, method)
VALUES(12,3289,'online');
INSERT INTO Records(oid, pid, method)
VALUES(14,11567,'notebook');
INSERT INTO Records(oid, pid, method)
VALUES(16,11567,'notebook');
INSERT INTO Records(oid, pid, method)
VALUES(18,88331,'online');
INSERT INTO Records(oid, pid, method)
VALUES(20,3289,'online');
INSERT INTO Records(oid, pid, method)
VALUES(22,11567,'notebook');
INSERT INTO Records(oid, pid, method)
VALUES(30,88331,'notebook');
INSERT INTO Records(oid, pid, method)
VALUES(32,3289,'online');
INSERT INTO Records(oid, pid, method)
VALUES(34,11567,'notebook');
*/
