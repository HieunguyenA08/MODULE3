create database QuanLyBanHang;
use QuanLyBanHang;

create table Customer(
cID int primary key not null,
cName nvarchar(45),
cAge int
);
create table Order1(
oID int primary key not null,
cID int ,
oDate Date ,
oTotalPrice float,
foreign key (cID) references Customer(cID)
);
create table Product(
pID Int primary key not null,
pName nvarchar(45),
pPrice float
);
create table OrderDetail (
oID int,
pID int,
odQTY int,
foreign key (oID) references Order1(oID),
foreign key (pID) references Product (pID)
);
