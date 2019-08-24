USE hospital;

-- q6a)
SELECT *
FROM patient_registration
WHERE registration_date BETWEEN '2002-07-20'
	AND '2008-08-20';

-- q6b)
UPDATE patient_registration
SET name = "Ram" WHERE registration_number = "PT011";

-- q6c)
SELECT patient_registration.name
FROM patient_registration, tests
WHERE patient_registration.registration_number = tests.patient_reg_number
AND tests.`date` = '2008-07-20';

-- q6d)
SELECT count(*)
FROM patient_registration, doctors
WHERE patient_registration.referral_doctor = doctors.id
	AND doctors.name = 'ABC';

-- q6e)
SELECT doctors.name, count(*)
FROM patient_registration, doctors
WHERE patient_registration.referral_doctor = doctors.id
GROUP BY doctors.name
ORDER BY count(*) DESC LIMIT 1;

-- q6f)
-- sets patient pt023 's bed to not alloted
-- then sets bed_number 456 to alloted
-- then assigns bed_number 456 to patient pt023
UPDATE beds
SET beds.status = 'not allotted'
WHERE beds.id IN (SELECT patient_registration.bed_number
	FROM patient_registration
	WHERE patient_registration.registration_number = "PT023");
	
UPDATE beds
SET beds.status = 'allotted'
WHERE beds.bed_number = '456';

UPDATE patient_registration
SET patient_registration.bed_number = (SELECT beds.id
	FROM beds
	WHERE beds.bed_number = '456')
WHERE patient_registration.registration_number = "PT023";


-- q6g)
UPDATE beds
SET beds.status = 'not allotted'
WHERE beds.bed_number = '123';

-- q6h)
SELECT *
FROM beds
WHERE beds.status = "not allotted"
	AND beds.ward_number = '10';
	
-- q6i)
SELECT patient_registration.name
FROM patient_registration, doctors, beds
WHERE patient_registration.referral_doctor = doctors.id
AND patient_registration.bed_number = beds.id
AND patient_registration.gender = 'male'
AND doctors.name = 'XYZ'
AND beds.ward_number = '13';
	
-- q6j)
SELECT *
FROM patient_registration
WHERE patient_registration.age > 50
AND patient_registration.referral_doctor IN (
	SELECT doctors.id
	FROM doctors
	WHERE doctors.name LIKE '%das%');