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
  image blob NOT NULL,
  PRIMARY KEY (username)
)
/
CREATE TABLE old_patient (
  username varchar(40) NOT NULL,
  name varchar(50) NOT NULL,
  sex varchar(1) NOT NULL,
  mobile_no varchar(15) NOT NULL,
  address varchar(100),
  city varchar(20),
  PRIMARY KEY (username)
)
/
create table doctor (
id int(10) NOT NULL AUTO_INCREMENT,
name varchar(50) NOT NULL,
email varchar(60) NOT NULL,
specialty varchar(50) NOT NULL,
PRIMARY KEY (id)
)
/
create table appointments(
s_no int(10) NOT NULL,
booked_for date NOT NULL,
time_slot varchar(15) NOT NULL,
patient_username varchar(40) NOT NULL,
doctor_id int(10) NOT NULL,
illness varchar(275),
FOREIGN KEY (doctor_id) REFERENCES doctor(id)
)
/
create table admin(
  username varchar(40) NOT NULL,
  name varchar(50) NOT NULL,
  password varchar(100) NOT NULL,
  PRIMARY KEY (username)
)
/
create table contact(
  name varchar(60) NOT NULL,
  email varchar(60) NOT NULL,
  regarding varchar(10) NOT NULL,
  subject varchar(70) NOT NULL,
  message varchar(3000) NOT NULL
)

/
insert into doctor(name, email, specialty) values('Ramesh Kumar','ramesh@gmail.com','Allergist')
/
insert into doctor(name, email, specialty) values('Suresh Kumar','suresh@gmail.com','Allergist')
/
insert into doctor(name, email, specialty) values('Harpish Verma','harpish@gmail.com','Anesthesiologist')
/
insert into doctor(name, email, specialty) values('Ramesh Kumar','ramesh@gmail.com','Cardiologist')
/
insert into doctor(name, email, specialty) values('Deepanshu Sharma','deepanshu@gmail.com','Cardiologist')
/
insert into doctor(name, email, specialty) values('Vivek Verma','vivek@gmail.com','Cardiologist')
/
insert into doctor(name, email, specialty) values('Aaditya','aaditya@gmail.com','Dermatologist')
/
insert into doctor(name, email, specialty) values('Aamod','aamod@gmail.com','Gastroenterologist')
/
insert into doctor(name, email, specialty) values('Arpit','arpit@gmail.com','Hematologist')
/
insert into doctor(name, email, specialty) values('Abhay','abhay@gmail.com','Internal Medicine Physician')
/
insert into doctor(name, email, specialty) values('Ashlesh','ashlesh@gmail.com','Nephrologist')
/
insert into doctor(name, email, specialty) values('Balachandra','balachandra@gmail.com','Neurologist')
/
insert into doctor(name, email, specialty) values('Basanta','basanta@gmail.com','Neurosurgeon')
/
insert into doctor(name, email, specialty) values('Bhalendra','Bhalendra@gmail.com','Obstetrician')
/
insert into doctor(name, email, specialty) values('Haimavati','Haimavati@gmail.com','Gynecologist')
/
insert into doctor(name, email, specialty) values('Harbhajan','Harbhajan@gmail.com','Nurse-Midwifery')
/
insert into doctor(name, email, specialty) values('Hyma','hyma@gmail.com','Occupational Medicine Physician')
/
insert into doctor(name, email, specialty) values('Madeshwaran','Madeshwaran@gmail.com','Ophthalmologist')
/
insert into doctor(name, email, specialty) values('Mahavira','Mahavira@gmail.com','Oral and Maxillofacial Surgeon')
/
insert into doctor(name, email, specialty) values('Harinakshi','Harinakshi@gmail.com','Orthopaedic Surgeon')
/
insert into doctor(name, email, specialty) values('Mrityunjay','Mrityunjay@gmail.com','Otolaryngologist')
/
insert into doctor(name, email, specialty) values('Madhur','Madhur@gmail.com','Pathologist')
/
insert into doctor(name, email, specialty) values('Hena','Hena@gmail.com','Pediatrician')
/
insert into doctor(name, email, specialty) values('Lakshman','Lakshman@gmail.com','Plastic Surgeon')
/
insert into doctor(name, email, specialty) values('Lokesh','Lokesh@gmail.com','Podiatrist')
/
insert into doctor(name, email, specialty) values('Mallika','Mallika@gmail.com','Psychiatrist')
/
insert into doctor(name, email, specialty) values('Loknath','Loknath@gmail.com','Pulmonary Medicine Physician')
/
insert into doctor(name, email, specialty) values('Tej Bahadur','TejBahadur@gmail.com','Radiation Onconlogist')
/
insert into doctor(name, email, specialty) values('Tahir','Tahir@gmail.com','Diagnostic Radiologist')
/
insert into doctor(name, email, specialty) values('Puruvi','Puruv@gmail.com','Rheumatologist')
/
insert into doctor(name, email, specialty) values('Dakshakanya','Dakshakanya@gmail.com','Urologist')
/
insert into doctor(name, email, specialty) values('Padmakali','padmakali@gmail.com','Urologist')
/
insert into old_patient(username, name, sex, mobile_no, address, city) values('Sonu_Kumar','Sonu Kumar','M','8802259380','','')
/
insert into admin values('robin','Robin Singh Bisht','oneD')
/
insert into contact values('Deepika','deepc@gmail.com','Feedback','Hey','hey this is really good')
/
insert into contact values('Suresh','suresh@gmail.com','Enquiry','Hello','theres a problem...')
/
insert into contact values('Ramesh','ramesh@gmail.com','Complaint','Sir','having an issue...')
/
stop