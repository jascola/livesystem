create database livesystem;
use livesystem;
create table student(
sId int PRIMARY KEY,
sName varchar(50),
sPassword varchar(50),
sAcademy  varchar(50),
sEmail varchar(50),
sState int 
);

create table teacher(
tId int PRIMARY KEY,
tName varchar(50),
tPassword varchar(50),
tEmail VARCHAR(50),
tAcademy VARCHAR(50),
tFlowers int
);

create table admin(
aId int PRIMARY KEY ,
aPassword VARCHAR(50)
);

create table class(
cId int PRIMARY KEY,
tId int ,
cName VARCHAR(50),
cOnline int ,
cShare VARCHAR(100),
cFlowers int ,
FOREIGN KEY (tId) REFERENCES teacher(tId)
);

create table c_student(
id int AUTO_INCREMENT PRIMARY KEY,
cId int,
sId int,
FOREIGN KEY(cId) REFERENCES class(cId),
FOREIGN KEY(sId) REFERENCES student(sId)
);

