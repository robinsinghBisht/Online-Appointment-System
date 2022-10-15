CREATE TABLE patient (
  username varchar(40) NOT NULL,
  name varchar(50) NOT NULL,
  sex varchar(1) NOT NULL,
  email varchar(60) NOT NULL,
  password varchar(100) NOT NULL,
  securityques varchar(50) NOT NULL,
  securityans varchar(50) NOT NULL,
  address varchar(100) NOT NULL,
  city varchar(20) NOT NULL,
  mobile_no varchar(15) NOT NULL,
  image longblob NOT NULL,
  PRIMARY KEY (username)
) 
/
create table register(name varchar2(20), pass varchar2(20), addr varchar2(20), id number(20), mail varchar2(20))
/
stop