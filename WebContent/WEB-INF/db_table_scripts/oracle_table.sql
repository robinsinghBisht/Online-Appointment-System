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
  UHID varchar(40) NOT NULL,
  name varchar(50) NOT NULL,
  sex varchar(1) NOT NULL,
  mobile_no varchar(15) NOT NULL,
  address varchar(100),
  city varchar(20),
  PRIMARY KEY (UHID)
) 
/
create table doctor (
id number(10) NOT NULL,
name varchar(50) NOT NULL,
email varchar(60) NOT NULL,
specialty varchar(50) NOT NULL,
PRIMARY KEY (id)
)
/
create table appointments(
s_no number(10) NOT NULL,
booked_for date NOT NULL,
time_slot varchar(15) NOT NULL,
patient_username varchar(40) NOT NULL,
doctor_id number(10) NOT NULL,
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
create sequence doctor_seq start with 1001
/
create sequence appointment_seq start with 1
/
create sequence old_patient_seq start with 11111
/
insert into doctor values(doctor_seq.NEXTVAL,'Ramesh Kumar','ramesh@gmail.com','Allergist')
/
insert into doctor values(doctor_seq.NEXTVAL,'Suresh Kumar','suresh@gmail.com','Allergist')
/
insert into doctor values(doctor_seq.NEXTVAL,'Harpish Verma','harpish@gmail.com','Anesthesiologist')
/
insert into doctor values(doctor_seq.NEXTVAL,'Ramesh Kumar','ramesh@gmail.com','Cardiologist')
/
insert into doctor values(doctor_seq.NEXTVAL,'Deepanshu Sharma','deepanshu@gmail.com','Cardiologist')
/
insert into doctor values(doctor_seq.NEXTVAL,'Vivek Verma','vivek@gmail.com','Cardiologist')
/
insert into doctor values(doctor_seq.NEXTVAL,'Aaditya','aaditya@gmail.com','Dermatologist')
/
insert into doctor values(doctor_seq.NEXTVAL,'Aamod','aamod@gmail.com','Gastroenterologist')
/
insert into doctor values(doctor_seq.NEXTVAL,'Arpit','arpit@gmail.com','Hematologist')
/
insert into doctor values(doctor_seq.NEXTVAL,'Abhay','abhay@gmail.com','Internal Medicine Physician')
/
insert into doctor values(doctor_seq.NEXTVAL,'Ashlesh','ashlesh@gmail.com','Nephrologist')
/
insert into doctor values(doctor_seq.NEXTVAL,'Balachandra','balachandra@gmail.com','Neurologist')
/
insert into doctor values(doctor_seq.NEXTVAL,'Basanta','basanta@gmail.com','Neurosurgeon')
/
insert into doctor values(doctor_seq.NEXTVAL,'Bhalendra','Bhalendra@gmail.com','Obstetrician')
/
insert into doctor values(doctor_seq.NEXTVAL,'Haimavati','Haimavati@gmail.com','Gynecologist')
/
insert into doctor values(doctor_seq.NEXTVAL,'Harbhajan','Harbhajan@gmail.com','Nurse-Midwifery')
/
insert into doctor values(doctor_seq.NEXTVAL,'Hyma','hyma@gmail.com','Occupational Medicine Physician')
/
insert into doctor values(doctor_seq.NEXTVAL,'Madeshwaran','Madeshwaran@gmail.com','Ophthalmologist')
/
insert into doctor values(doctor_seq.NEXTVAL,'Mahavira','Mahavira@gmail.com','Oral and Maxillofacial Surgeon')
/
insert into doctor values(doctor_seq.NEXTVAL,'Harinakshi','Harinakshi@gmail.com','Orthopaedic Surgeon')
/
insert into doctor values(doctor_seq.NEXTVAL,'Mrityunjay','Mrityunjay@gmail.com','Otolaryngologist')
/
insert into doctor values(doctor_seq.NEXTVAL,'Madhur','Madhur@gmail.com','Pathologist')
/
insert into doctor values(doctor_seq.NEXTVAL,'Hena','Hena@gmail.com','Pediatrician')
/
insert into doctor values(doctor_seq.NEXTVAL,'Lakshman','Lakshman@gmail.com','Plastic Surgeon')
/
insert into doctor values(doctor_seq.NEXTVAL,'Lokesh','Lokesh@gmail.com','Podiatrist')
/
insert into doctor values(doctor_seq.NEXTVAL,'Mallika','Mallika@gmail.com','Psychiatrist')
/
insert into doctor values(doctor_seq.NEXTVAL,'Loknath','Loknath@gmail.com','Pulmonary Medicine Physician')
/
insert into doctor values(doctor_seq.NEXTVAL,'Tej Bahadur','TejBahadur@gmail.com','Radiation Onconlogist')
/
insert into doctor values(doctor_seq.NEXTVAL,'Tahir','Tahir@gmail.com','Diagnostic Radiologist')
/
insert into doctor values(doctor_seq.NEXTVAL,'Puruvi','Puruv@gmail.com','Rheumatologist')
/
insert into doctor values(doctor_seq.NEXTVAL,'Dakshakanya','Dakshakanya@gmail.com','Urologist')
/
insert into doctor values(doctor_seq.NEXTVAL,'Padmakali','padmakali@gmail.com','Urologist')
/
insert into old_patient values(old_patient_seq.NEXTVAL,'Sonu Kumar','M','8802259380','','')
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