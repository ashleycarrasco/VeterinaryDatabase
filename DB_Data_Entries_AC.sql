/*
Ashley Carrasco
Project Final Assignment
Project insertions of entries, simple queries, complex queries
*/

-- #1 Insertion of data into the 'owner' table 
INSERT INTO owner VALUES 
(001, 'Ashley', 'Carrasco', '732-796-6612', 'acarrasco3@gmail.com', '222 Tab Ave', 'Long Branch', 'New Jersey', '07740'),
(002, 'Selena', 'Santos-Martinez', '732-990-5432', 'selena.sant.martinez@gmail.com', '53 South Fifth Ave', 'Long Branch', 'New Jersey', '07740'),
(003, 'Cade', 'Barbos', '732-123-0986', 'barbos.cade123@gmail.com', '153 North Bath Ave', 'Long Branch', 'New Jersey', '07740'),
(004, 'James', 'Switney', '848-029-3732', 'j.switney2000@my.brookdalecc.edu', '316 Bay Meadows', 'Freehold Township', 'New Jersey', '07728'),
(005, 'Corbin', 'Brando-Tovi', '732-487-2334', 'btovi.corbin1999@gmail.com', '23 Columbia Road', 'Manalapan Township', 'New Jersey', '07726'),
(006, 'Nicholas', 'Xulio', '848-934-0128', 'nxulio@my.brookdalecc.edu', '7794 Golden Star', 'Freehold Township', 'New Jersey', '07728'),
(007, 'Thorsten', 'Branislav', '848-190-0054', 'thortbrain.slav1998@outlook.com', '90 Heritage Street', 'Lincroft', 'New Jersey', '07733'),
(008, 'Skyler-Ahn', 'Prochurus', '732-162-6789', 'prochurus.sy@gmail.com', '30 Warren Lane Campbell', 'Trenton', 'New Jersey', '08601'),
(009, 'Tyson', 'Dallas', '856-330-5434', 'ty.dallas.email@gmail.com', '70 Leeton Ridge Street', 'Red Bank', 'New Jersey', '07701'),
(010, 'Danny', 'Gonzalez-Pochura', '732-935-1369', 'gonz.poch.denise@outlook.com', '91 Pennington Street', 'Freehold Borough', 'New Jersey', '07728'),
(011, 'Ann', 'Ferrell', '888-393-1221', 'ann.f.2000@gmail.com', '23 Kirkland Street', 'Freehold Township', 'New Jersey', '07728'),
(012, 'Shawn', 'Hayes-Morales', '732-237-1111', 'shawny.hayesmorales01@gmail.com', 'Creekside Avenue', 'Red Bank', 'New Jersey', '07701'),
(013, 'Zion', 'Glover', '901-035-2457', 'z.glover@my.brookdalecc.edu', '227 Randall Mill Court', 'Lincroft', 'New Jersey', '07733'),
(014, 'Landyn', 'Gallegos', '732-272-2762', 'lgallegos@gmail.com', '63 East Oxford Street', 'Manalapan Township', 'New Jersey', '07726'),
(015, 'Kelsie', 'Camacho', '848-362-0278', 'cam.kelsie@outlook.com', '12 Hall Drive', 'Long Branch', 'New Jersey', '07740');

SELECT * FROM owner;

-- #2 Insertion of data into 'veterinarian' values
INSERT INTO veterinarian VALUES
(101, 'Madison', 'Joel', '848-099-0302', 'madisonjoelvet@gmail.com'),
(102, 'Morgan', 'Riley', '848-218-7813', 'drmorganriley@outlook.com'),
(103, 'Blair', 'Thompson-Cooper', '709-223-6787', 'thompsoncooper1990@gmail.com'),
(104, 'Amy', 'Arnold', '848-283-0243', 'amyarnold@gmail.com'),
(105, 'Jericka', 'Rivera-Ortiz', '732-193-1511', 'dr.jericka.rivera.ortiz@outlook.com'),
(106, 'Blake', 'Solina', '732-021-4532', 'solinablake1@gmail.com'),
(107, 'Harry', 'Valentine', '848-392-0300', 'valentine.harry@gmail.com'),
(108, 'Sameer', 'Jaffer-Angelo', '701-342-2791', 'drsameerjafferangelo0@gmail.com'),
(109, 'Kai-Marie', 'Coiyl', '732-327-4319', 'coiyl.kai@outlook.com'),
(110, 'Ashton', 'Gillembrov', '848-010-2710', 'ashtongillembrov@gmail.com');

SELECT * FROM veterinarian;

-- #3 Insertion of data into 'animal' values
INSERT INTO animal VALUES
(201, 001, 101,'Milo', 'Feline', 'Domestic Shorthair', 'M', '2022-10-23', 1, 9.80, 'Blue'),
(202, 002, 101,'Sparky', 'Feline', 'European Shorthair', 'M', '2019-08-14', 4, 8.31, 'Green'),
(203, 003, 102,'Bubby', 'Canine', 'Bulldog', 'F', '2020-03-09', 3, 28, 'Brown'),
(204, 004, 103,'Razor', 'Canine', 'Yorkshire Terrier', 'M', '2020-02-16', 3, 4.50, 'Brown'),
(205, 005, 104,'Max', 'Canine', 'Pitbull', 'F', '2018-05-16', 5, 18.22, 'Brown'),
(206, 006, 105,'Petty', 'Feline', 'Scottish Fold', 'M', '2021-02-23', 2, 10.01, 'Yellow'),
(207, 007, 106,'Charlie', 'Canine', 'German Shepard', 'M', '2020-11-01', 3, 80.26, 'Brown'),
(208, 008, 107,'Ms.Queen', 'Feline', 'Sphynx', 'F', '2022-05-22', 1, 8, 'Light Blue'),
(209, 009, 107,'Doodle', 'Canine', 'Standard Poodle', 'M', '2022-01-27', 1, 55.60, 'Hazel'),
(210, 010, 108,'Chunk', 'Canine', 'Bulldog', 'M', '2020-04-16', 3, 25.41, 'Brown'), 
(211, 011, 109,'Mr.Whiskers', 'Feline', 'American Shorthair', 'M', '2021-08-09', 2, 11, 'Green'), 
(212, 012, 110,'Sparky', 'Canine', 'Yorkshire Terrier', 'M', '2019-07-21', 4, 5.25, 'Brown'), 
(213, 013, 110,'Raplhie', 'Canine', 'Pomeranian', 'F', '2022-01-22', 1, 4.50, 'Brown'), 
(214, 014, 110,'Beetle', 'Feline', 'Birman', 'M', '2020-08-08', 3, 8.16, 'Light Blue'), 
(215, 015, 110,'Chai', 'Feline', 'British Shorthair', 'M', '2022-12-01', 1, 13, 'Hazel');

SELECT * FROM animal;

-- #4 Insertion of data into 'appointment' values 
INSERT INTO appointment VALUES 
(301, 101,'2024-01-18', '10:15:00'),
(302, 102,'2024-01-05','13:00:00'),
(303, 103,'2024-02-12','09:30:00'),
(304, 104,'2024-01-28', '12:00:00'),
(305, 105,'2024-02-02', '16:10:00'),
(306, 106,'2023-12-29', '13:45:00'),
(307, 107,'2024-01-08', '10:15:00'),
(308, 108,'2023-12-29', '14:00:00'),
(309, 109,'2024-01-05', '09:30:00'),
(310, 110,'2024-02-01', '10:15:00');

SELECT * FROM appointment;

-- #5 Insertion of data into 'diagnosis' values 
INSERT INTO diagnosis VALUES 
(401, 'Anemia'),
(402, 'Arthritis'),
(403, 'Asthma'),
(404, 'Blindness'),
(405, 'Breathing Difficulties'),
(406, 'Cancer'),
(407, 'Cataracts'),
(408, 'Cold'),
(409, 'Depression'),
(410, 'Diabetes'),
(411, 'Digestive Issues'),
(412, 'Ear Infection'),
(413, 'Fleas'),
(414, 'High Blood Pressure'),
(415, 'High Blood Sugar'),
(416, 'High Cholesterol'),
(417, 'Joint Pain'),
(418, 'Kidney Disease'),
(419, 'Lethargy'),
(420, 'Nausea'),
(421, 'Ringworm'),
(422, 'Seizures'),
(423, 'Nausea'),
(424, 'Vomiting'),
(425, 'Weakness'),
(426, 'Weight Gain'),
(427, 'Weight Loss');

SELECT * FROM diagnosis;

-- #6 Insertion of data into 'prescription' values 
INSERT INTO prescription VALUES 
(501, 'Mentronidazole'),
(502,'Cefpoderm'),
(503,'Diphenhydramine'),
(504,'Dramamine'),
(505,'Nitenpyram'),
(506,'Carprofen'),
(507,'Ketoconazole'),
(508,'Itraconazole'),
(509,'Nitenpyram'),
(510,'Gabapentin');

SELECT * FROM prescription;

-- #7 Insertion of data into 'appointment_information' values 
INSERT INTO appointment_information VALUES 
(201, 001, 101, 301),
(202, 002, 101, 302),
(203, 003, 102, 303),
(204, 004, 103, 304),
(205, 005, 104, 305),
(206, 006, 105, 306),
(207, 007, 106, 307),
(208, 008, 107, 308),
(209, 009, 107, 309),
(210, 010, 118, 310);

SELECT * FROM appointment_information;

-- #8 Insertion of data into 'diagnosis_information' values 
INSERT INTO diagnosis_information VALUES 
(201, 001, 101, 405, '2023-11-01'),
(202, 002, 101, 410, '2023-12-04'),
(203, 003, 102, 401, '2023-10-09'),
(204, 004, 103, 403, '2022-08-08'),
(205, 005, 104, 425, '2023-09-25'),
(206, 006, 105, 413, '2023-11-29'),
(207, 007, 106, 402, '2023-11-15'),
(208, 008, 107, 414, '2023-11-12'),
(209, 009, 107, 424, '2023-10-30'),
(210, 010, 118, 408, '2023-11-28');

SELECT * FROM diagnosis_information;

-- #9 Insertion of data into 'prescription_information' values 
INSERT INTO prescription_information VALUES 
(201, 001, 101, 501, '2023-11-22', '2024-01-10', '10 mg', 28, 1),
(202, 002, 101, 504, '2023-10-15', '2024-05-02', '100 mg', 100, 1),
(203, 003, 102, 508, '2023-10-31', '2025-03-17', '15 mg', 15, 1),
(204, 004, 103, 510, '2023-11-27', '2024-07-11', '30 mg', 10, 2),
(205, 005, 104, 507, '2023-11-03', '2024-10-14', '15 mg', 100, 1),
(206, 006, 105, 506, '2023-12-01', '2025-09-06', '50 mg', 10, 1),
(207, 007, 106, 505, '2023-11-07', '2026-12-01', '25 mg', 25, 3),
(208, 008, 107, 503, '2023-11-08', '2024-07-28', '10 mg', 30, 5),
(209, 009, 107, 509, '2023-10-28', '2025-04-16', '25 mg', 15, 2),
(210, 010, 118, 502, '2023-11-29', '2026-09-19', '20 mg', 10, 1);

SELECT * FROM prescription_information;

-- Simple queries ------------------------------------------------------------------------

/* SQ #1 This query is responsible for determining what animals are assigned to the 
veterinarian whose veterinarian_id is 118. 

Business example: Dr.Gillembrov wants to know what animals are assigned to him.
*/

SELECT animal_id, animal_first_name
FROM animal
WHERE veterinarian_id = 110
ORDER BY animal_id;

/* SQ #2 This query is responsible for organizing the appointments that are scheduled
for 10:15 AM, listing them in order of which date is nearest.  
Business example: The veterinarians at the vet clinic request to know who 
is scheduled for appointments at 10:15 AM. 
*/

SELECT appointment_id, veterinarian_id, appointment_date
FROM appointment
WHERE appointment_time = '10:15:00'
ORDER BY appointment_date;

/* SQ #3 This query is resposible for organizing all the animals and listing their 
species and their breed, ordered by their animal_id. 

Business example: The veterinarians request that the animals be organized by species followed by their breed.
*/

SELECT animal_id, animal_first_name, CONCAT(animal_species,', ' ,animal_breed) AS animal_type
FROM animal
ORDER BY animal_id;

/* SQ #4 This query is resposible for showing the top five heaviest animals, 
conveying whether they are a canine or a feline and their weight. 

Business example: For statistical reasons, the veterinarians request 
to know which of their patients (the animals) are heaviest in order to determine any health risks.
*/

SELECT animal_id, animal_first_name, animal_species ,animal_weight_lbs
FROM animal
ORDER BY animal_weight_lbs DESC
LIMIT 5;

/* SQ #5 This query is resposible for joining together the owner and animal table in order to 
convey which animal belongs to what owner. 

Business example: The veterinarians request to know the owner's of their patients (the animals). 
*/

SELECT owner_first_name, owner_last_name, animal_first_name
FROM owner o 
JOIN animal a 
ON o.owner_id = a.owner_id 
ORDER BY owner_first_name;

/* SQ #6 This query is resposible for updating the veterinarian_email_address
of the veterinarian whose id is 103.

Business example: Dr.Thompson-Cooper has changed his email and wants it to be updated 
in the database for future reference.  
*/

UPDATE veterinarian 
SET  veterinarian_email_address = 'dr.thompsoncooper@gmail.com'
WHERE veterinarian_id = 103;

/* SQ #7 This query is resposnible for adding three more diagnoses that were not already part of the database. 

Business example: The veterinarians realize that the following possible diagnoses are not in the database, therefore
the update in the database must be done for potential animal diagnoses.  
*/

INSERT INTO diagnosis VALUES
(428, 'Fever'),
(429, 'Motion Sickness'),
(430, 'Allergies');

/* SQ #8 This query is responsible for listing the amount 
of prescriptions that are due to expire after 2024.

Business example: The veterinarians request to know how many 
prescriptions will expire after 2024 after having prescribed 10 prescriptions. 
*/

SELECT 'Expires after 2024' AS expiration_date, 
	COUNT(*) AS number_of_prescriptions_expired
FROM prescription_information
WHERE prescription_expiration_date > '2024-12-31';

-- Complex queries ------------------------------------------------------------------------

/* CQ #1 This query is responsible for creating a view that lists the basic 
information of the veterinarians.

Business example: The view is for owners that are newly 
introduced to the vet clinic in order for them to have access to the 
veterinarians' information, without tampering with the actual database.
*/

CREATE OR REPLACE VIEW veterinarian_info AS
SELECT veterinarian_first_name, veterinarian_last_name, veterinarian_phone_number, veterinarian_email_address
FROM veterinarian;

select * from veterinarian_info;

/* CQ #2 This query is responsible for creating and calling a stored 
procedure that checks whether the update to prescription_name can be NULL. 
If the column cannot be null, it will return a message saying so.

Business example: A veterinarian makes a mistake in attempting to 
update prescription_name for prescription_id 505, however the procedure 
created will output that the column cannot be NULL.
*/

DROP PROCEDURE IF EXISTS null_test;
DELIMITER //
CREATE PROCEDURE null_test()
BEGIN
	DECLARE column_cannot_be_null TINYINT DEFAULT FALSE;
    
    DECLARE CONTINUE HANDLER FOR 1048
		SET column_cannot_be_null = TRUE;
        
	UPDATE prescription 
    SET prescription_name = NULL 
    WHERE prescription_id = 505;
    
    IF column_cannot_be_null = TRUE THEN
		SELECT 'This column cannot be null.' AS message;
	ELSE
		SELECT '1 row was updated.' AS message;
	END IF;
END //

DELIMITER ;
CALL null_test();

/* CQ #3 This query is a stored procedure with a trasnaction as it 
inserts 5 more values into the prescription table. If this was 
succesful, the transactions were committed. If not, it is rolled back.

Business example: The transaction within the procdure allows for a more 
efficient way in inserting values to tables in the database, aiding the
veterinarians. 
*/

DROP PROCEDURE IF EXISTS insert_test;
DELIMITER //
CREATE PROCEDURE insert_test()
BEGIN
	DECLARE sql_error 	TINYINT DEFAULT FALSE;
    
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
		SET sql_error = TRUE;
	
    START TRANSACTION;
    
    INSERT INTO prescription
    VALUES(511, 'Penicillin'),
    (512, 'Enrofloxacin'),
    (513, 'Cephalexin'),
    (514, 'Levamisole'),
    (515, 'Marbofloxacin');

	IF sql_error = FALSE THEN
		COMMIT;
        SELECT 'The transaction was committed.';
	ELSE 
		ROLLBACK;
        SELECT 'The transaction was rolled back.';
	END IF;
END//

DELIMITER ;
CALL insert_test();

select * from prescription;

/* CQ #4 This query is resposnible for creating a function that 
allows the appointment_time to be retrieved based on the appointment_id inputted. The select 
statement below utilizes the get_appointment_time function to show the veterinarian_id, appointment_date,
and appointment_time based on the appointment_id. 

Business example: The veterinarians are curious as to what day and time a certain appointment_id has an
appointment for. 
*/

DROP FUNCTION IF EXISTS get_appointment_time;
DELIMITER //
CREATE FUNCTION get_appointment_time
(
	appointment_id_param	 INT
)
RETURNS TIME
BEGIN
	DECLARE appointment_time_var TIME;
    
	SELECT appointment_time
	INTO appointment_time_var
	FROM appointment
	WHERE appointment_id = appointment_id_param;
   
   RETURN(appointment_time_var);
END//

DELIMITER ;

SELECT veterinarian_id, appointment_date, appointment_time
FROM appointment
WHERE appointment_time = get_appointment_time(302);

/* CQ #5 This query adds all the canine weights together and divides them by 
the number of canines present in the database, which is 15. This gets the average,
which is then rounded to two decimal places.

Business example: For statistical reasons, the veterinarians request to know the average weight
of the canines they see. 
*/

CREATE VIEW canine_avg_weight AS 
SELECT ROUND((SUM(animal_weight_lbs) / 15), 2) AS average_weight_of_canines_lbs
FROM animal
WHERE animal_species = 'Canine';

SELECT * FROM canine_avg_weight;

/* CQ #6 This query is responsible for using a subquery to convey the results
of the veterinarians that are also part of the animal table.

Business example: The veterinarians at the clinic request to know if any of them
currently have no patients (animals). According to the result, they all do. 
*/

SELECT DISTINCT veterinarian_last_name
FROM veterinarian 
WHERE veterinarian.veterinarian_id IN  
		(SELECT veterinarian_id 
        FROM animal)
ORDER BY veterinarian_last_name;
