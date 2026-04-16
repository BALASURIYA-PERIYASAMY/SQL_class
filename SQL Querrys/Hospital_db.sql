CREATE DATABASE hospital_db;

USE hospital_db;

 ### Patients Table

CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    phone VARCHAR(15),
    disease VARCHAR(100),
    admission_date DATE
);

INSERT INTO patients VALUES
(1,'Arun Kumar',34,'Male','9876543210','Fever','2026-01-10'),
(2,'Priya Sharma',28,'Female','9876543211','Diabetes','2026-01-12'),
(3,'Rahul Das',45,'Male','9876543212','Heart Issue','2026-01-15'),
(4,'Meena Devi',30,'Female','9876543213','Migraine','2026-01-18'),
(5,'Suresh Patel',52,'Male','9876543214','BP','2026-01-20'),
(6,'Anita Roy',26,'Female','9876543215','Fever','2026-01-22'),
(7,'Karan Singh',40,'Male','9876543216','Asthma','2026-01-25'),
(8,'Neha Gupta',33,'Female','9876543217','Allergy','2026-01-26'),
(9,'Ravi Verma',60,'Male','9876543218','Diabetes','2026-01-27'),
(10,'Pooja Mehta',22,'Female','9876543219','Cold','2026-01-28'),
(11,'Ajay Kumar',36,'Male','9876543220','Fever','2026-02-01'),
(12,'Sneha Reddy',29,'Female','9876543221','Skin Infection','2026-02-02'),
(13,'Vikram Rao',50,'Male','9876543222','Heart Issue','2026-02-03'),
(14,'Deepa Iyer',41,'Female','9876543223','BP','2026-02-05'),
(15,'Ramesh Gupta',55,'Male','9876543224','Diabetes','2026-02-07'),
(16,'Kavita Joshi',31,'Female','9876543225','Migraine','2026-02-09'),
(17,'Manoj Sharma',48,'Male','9876543226','Asthma','2026-02-11'),
(18,'Sunita Nair',38,'Female','9876543227','Fever','2026-02-12'),
(19,'Harish Patel',44,'Male','9876543228','Allergy','2026-02-13'),
(20,'Lakshmi Devi',35,'Female','9876543229','Cold','2026-02-14');


### Doctor Schedules Table

CREATE TABLE doctor_schedules (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(100),
    specialization VARCHAR(100),
    available_day VARCHAR(20),
    available_time VARCHAR(50)
);

INSERT INTO doctor_schedules VALUES
(1,'Dr. Rajesh','Cardiologist','Monday','10AM-2PM'),
(2,'Dr. Anita','Dermatologist','Tuesday','11AM-3PM'),
(3,'Dr. Kumar','General Physician','Wednesday','9AM-1PM'),
(4,'Dr. Sneha','Neurologist','Thursday','10AM-2PM'),
(5,'Dr. Vikram','Orthopedic','Friday','12PM-4PM'),
(6,'Dr. Meera','Gynecologist','Saturday','9AM-1PM'),
(7,'Dr. Arjun','ENT','Monday','2PM-6PM'),
(8,'Dr. Pooja','Pediatrician','Tuesday','10AM-2PM'),
(9,'Dr. Ravi','Cardiologist','Wednesday','11AM-3PM'),
(10,'Dr. Nisha','Dentist','Thursday','9AM-12PM'),
(11,'Dr. Sanjay','Orthopedic','Friday','1PM-5PM'),
(12,'Dr. Deepa','Neurologist','Saturday','10AM-2PM'),
(13,'Dr. Manoj','General Physician','Monday','8AM-12PM'),
(14,'Dr. Kavita','Dermatologist','Tuesday','1PM-4PM'),
(15,'Dr. Suresh','ENT','Wednesday','2PM-6PM');


### Billing Table

CREATE TABLE billing (
    bill_id INT PRIMARY KEY,
    patient_id INT,
    treatment VARCHAR(100),
    doctor_fee DECIMAL(10,2),
    medicine_cost DECIMAL(10,2),
    total_amount DECIMAL(10,2),
    payment_status VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

INSERT INTO billing VALUES
(1,1,'General Checkup',500,300,800,'Paid'),
(2,2,'Diabetes Test',700,400,1100,'Paid'),
(3,3,'Heart Scan',2000,800,2800,'Pending'),
(4,4,'Migraine Treatment',600,200,800,'Paid'),
(5,5,'BP Check',500,150,650,'Paid'),
(6,6,'Fever Treatment',400,200,600,'Paid'),
(7,7,'Asthma Treatment',900,350,1250,'Pending'),
(8,8,'Allergy Test',800,300,1100,'Paid'),
(9,9,'Diabetes Check',700,300,1000,'Pending'),
(10,10,'Cold Treatment',300,150,450,'Paid'),
(11,11,'Fever Check',400,200,600,'Paid'),
(12,12,'Skin Treatment',800,250,1050,'Pending'),
(13,13,'Heart Consultation',1500,500,2000,'Paid'),
(14,14,'BP Treatment',600,200,800,'Paid'),
(15,15,'Diabetes Treatment',900,300,1200,'Pending');



## SECTION 1 — PATIENT ANALYSIS

# Find total number of patients.
SELECT count(*) AS TOTAL_PATIENTS FROM PATIENTS;

# Find average age of patients.
SELECT AVG(AGE) FROM PATIENTS;

# Find maximum patient age.
SELECT MAX(AGE) FROM PATIENTS;

# Find minimum patient age.
SELECT MIN(AGE) FROM PATIENTS;

# Count patients per disease.
SELECT DISEASE, count(*) AS NO_OF_PATIENTS FROM PATIENTS GROUP BY DISEASE;

# Find diseases affecting more than 2 patients.
SELECT DISEASE, count(*) AS NO_OF_PATIENTS FROM PATIENTS GROUP BY DISEASE HAVING count(*)>2;

# Find diseases affecting exactly 1 patient.
SELECT DISEASE, count(*) AS NO_OF_PATIENTS FROM PATIENTS GROUP BY DISEASE HAVING count(*)=1;

# Find diseases affecting the highest number of patients.
SELECT DISEASE, count(*) AS NO_OF_PATIENTS FROM PATIENTS GROUP BY DISEASE ORDER BY COUNT(*) DESC LIMIT 1;

# Find diseases affecting the least number of patients.
SELECT DISEASE, count(*) AS NO_OF_PATIENTS FROM PATIENTS GROUP BY DISEASE ORDER BY COUNT(*) ASC LIMIT 1;

# Find diseases where average patient age is above 40.
SELECT DISEASE, AVG(AGE) AS AVG_PATIENTS FROM PATIENTS GROUP BY DISEASE HAVING AVG(AGE)>40;

# Find diseases where maximum patient age exceeds 50.
SELECT DISEASE, MAX(AGE) AS AVG_PATIENTS FROM PATIENTS GROUP BY DISEASE HAVING AVG(AGE)>50;

# Find diseases where minimum patient age is below 30.
SELECT DISEASE, MIN(AGE) AS AVG_PATIENTS FROM PATIENTS GROUP BY DISEASE HAVING AVG(AGE)<30;

# Find admission dates with more than one patient.
SELECT ADMISSION_DATE, COUNT(*) FROM PATIENTS GROUP BY ADMISSION_DATE HAVING COUNT(*) > 1;

# Find number of patients admitted each day.
SELECT ADMISSION_DATE, COUNT(*) FROM PATIENTS GROUP BY ADMISSION_DATE;

# Find number of patients admitted each month.
SELECT MONTH(admission_date) AS month, COUNT(*) FROM patients GROUP BY MONTH(admission_date);

# Find earliest admission date.
SELECT ADMISSION_DATE FROM PATIENTS ORDER BY ADMISSION_DATE LIMIT 1;

# Find latest admission date.
SELECT ADMISSION_DATE FROM PATIENTS ORDER BY ADMISSION_DATE DESC LIMIT 1;

# Find patients admitted before Feb 1.
SELECT * FROM PATIENTS WHERE ADMISSION_DATE <'2026-02-01';

# Find patients admitted after Jan 25.
SELECT * FROM PATIENTS WHERE ADMISSION_DATE >'2026-01-25';

# Find patients admitted between two dates.
SELECT * FROM PATIENTS WHERE ADMISSION_DATE BETWEEN '2026-01-25' AND '2026-02-01';

# Find diseases where total patient age exceeds 100.
SELECT DISEASE, SUM(AGE) FROM PATIENTS GROUP BY DISEASE HAVING SUM(AGE)>100;

# Find diseases with average patient age above hospital average.
SELECT DISEASE, AVG(AGE) FROM PATIENTS GROUP BY DISEASE HAVING AVG(AGE)>(SELECT AVG(AGE) FROM PATIENTS);

# Find patients older than average patient age.
SELECT * FROM PATIENTS WHERE AGE> (SELECT AVG(AGE) FROM PATIENTS);

# Find patients younger than average patient age.
SELECT * FROM PATIENTS WHERE AGE < (SELECT AVG(AGE) FROM PATIENTS);

# Find patients with same age.
SELECT AGE, COUNT(*) FROM PATIENTS GROUP BY AGE HAVING COUNT(*)>1;

# Find diseases shared by multiple patients.
SELECT DISEASE FROM PATIENTS GROUP BY DISEASE HAVING COUNT(*) > 1;

# Find patients whose disease contains 'Heart'.
SELECT * FROM PATIENTS WHERE DISEASE LIKE "%heart%";

# Find patients whose disease contains 'Allergy'.
SELECT * FROM PATIENTS WHERE DISEASE LIKE "%allergy%";

# Find diseases starting with 'A'.
SELECT * FROM PATIENTS WHERE DISEASE LIKE "a%";

# Find diseases ending with 's'.
SELECT * FROM PATIENTS WHERE DISEASE LIKE "%s";

# Find diseases having exactly two patients.
SELECT DISEASE, COUNT(*) FROM PATIENTS GROUP BY DISEASE HAVING COUNT(*)=2;

# Find diseases having more male patients than female patients.
SELECT DISEASE FROM PATIENTS GROUP BY DISEASE
HAVING SUM(CASE WHEN gender='Male' THEN 1 ELSE 0 END) >
       SUM(CASE WHEN gender='Female' THEN 1 ELSE 0 END);
       
# Find diseases having more female patients than male patients.
SELECT DISEASE FROM PATIENTS GROUP BY DISEASE
HAVING SUM(CASE WHEN gender='Male' THEN 1 ELSE 0 END) <
       SUM(CASE WHEN gender='Female' THEN 1 ELSE 0 END);
       
# Find diseases where male patient count equals female count.
SELECT DISEASE FROM PATIENTS GROUP BY DISEASE
HAVING COUNT(CASE WHEN gender='Male' THEN 1 ELSE 0 END) =
       COUNT(CASE WHEN gender='Female' THEN 1 ELSE 0 END);
       
# Find diseases where average patient age exceeds 35.
SELECT DISEASE, AVG(AGE) FROM PATIENTS GROUP BY DISEASE HAVING AVG(AGE)>35;

# Rank diseases based on patient count.
SELECT DISEASE, COUNT(*) AS TOTAL_COUNT, RANK() OVER (ORDER BY COUNT(*) DESC) AS DISEASE_RANK FROM PATIENTS GROUP BY DISEASE;

# Find top 3 diseases with most patients.
SELECT DISEASE, COUNT(*) AS patient_count FROM PATIENTS GROUP BY DISEASE ORDER BY patient_count DESC LIMIT 3;

# Find bottom 3 diseases with least patients.
SELECT DISEASE, COUNT(*) AS patient_count FROM PATIENTS GROUP BY DISEASE ORDER BY patient_count ASC LIMIT 3;

# Find diseases with duplicate entries.
SELECT DISEASE, COUNT(*) FROM PATIENTS GROUP BY DISEASE HAVING COUNT(*) > 1;

# Find distinct diseases.
SELECT DISTINCT DISEASE FROM PATIENTS;

# Find patient names with longest length.
SELECT NAME FROM PATIENTS ORDER BY LENGTH(NAME) DESC LIMIT 1;

# Find patient names with shortest length.
SELECT NAME FROM PATIENTS ORDER BY LENGTH(NAME) ASC LIMIT 1;

# Find patients admitted on the same date.
SELECT ADMISSION_DATE, COUNT(*) FROM PATIENTS GROUP BY ADMISSION_DATE HAVING COUNT(*) > 1;

# Find diseases appearing only once.
SELECT DISEASE, COUNT(*) FROM PATIENTS GROUP BY DISEASE HAVING COUNT(*) = 1;

# Find diseases appearing more than once.
SELECT DISEASE, COUNT(*) FROM PATIENTS GROUP BY DISEASE HAVING COUNT(*) > 1;

# Find patients whose age equals maximum age.
SELECT * FROM PATIENTS WHERE AGE = (SELECT MAX(AGE) FROM PATIENTS);

# Find patients whose age equals minimum age.
SELECT * FROM PATIENTS WHERE AGE = (SELECT MIN(AGE) FROM PATIENTS);

# Find patients whose admission date equals earliest date.
SELECT * FROM PATIENTS WHERE ADMISSION_DATE = (SELECT MIN(ADMISSION_DATE) FROM PATIENTS);

# Find patients whose admission date equals latest date.
SELECT * FROM PATIENTS WHERE ADMISSION_DATE = (SELECT MAX(ADMISSION_DATE) FROM PATIENTS);

# Rank patients based on age.
SELECT NAME, AGE, RANK() OVER(ORDER BY AGE) AS AGE_RANK FROM PATIENTS;

# Find top 5 oldest patients.
SELECT NAME, AGE FROM PATIENTS ORDER BY AGE DESC LIMIT 5;

# Find top 5 youngest patients.
SELECT NAME, AGE FROM PATIENTS ORDER BY AGE ASC LIMIT 5;

# Calculate running count of patients by admission date.
SELECT admission_date, COUNT(*) OVER(ORDER BY admission_date) AS running_total FROM patients;

# Calculate cumulative patient count.
SELECT admission_date, SUM(1) OVER(ORDER BY admission_date) AS cumulative_patients FROM patients;

# Find age difference from average age.
SELECT name, age, age - (SELECT AVG(age) FROM patients) AS age_difference FROM patients;

# Calculate percentage of patients per disease.
SELECT disease, COUNT(*) * 100/(SELECT COUNT(*) FROM patients) AS percentage FROM patients GROUP BY disease;

# Rank patients within each disease by age.
SELECT name, disease, age, RANK() OVER(PARTITION BY disease ORDER BY age DESC) AS rank_in_disease FROM patients;

# Find first patient admitted for each disease.
SELECT * FROM ( SELECT *, ROW_NUMBER() OVER(PARTITION BY disease ORDER BY admission_date) AS rn FROM patients ) x WHERE rn = 1;

# Find last patient admitted for each disease.
SELECT * FROM ( SELECT *, ROW_NUMBER() OVER(PARTITION BY disease ORDER BY admission_date DESC) AS rn FROM patients ) x WHERE rn = 1;

# Find disease with highest average age.
SELECT disease, AVG(age) AS avg_age FROM patients GROUP BY disease ORDER BY avg_age DESC LIMIT 1;
