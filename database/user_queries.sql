-- Query to insert 1 row in the 'users' table

INSERT INTO users (
	first_name, 
	last_name,
	email,
	password,
	profile_pic)
VALUES 
	('John',
	'Smith',
	'john.smith@mail.com',
	'password',
	'https://randomuser.me/api/portraits/men/68.jpg'
);

-- Query to read 1 row from the 'users' table (profile)

SELECT 
	profile_pic, 
	first_name, 
	last_name, 
	email
FROM 
	users
WHERE
	user_id = 1;

-- Query to read 1 row from the 'users' table (login)

SELECT 
	email,
	password
FROM
	users
WHERE
	email = 'john.smith@mail.com' AND password = 'password'

-- Query to update 1 row in the 'users' table

UPDATE 
	users
SET
	profile_pic = 'http://randomuser.me/api/portraits/men/81.jpg',
	first_name = 'John',
	last_name = 'Lopez',
	email = 'john.lopez@gmail.com'
WHERE
	user_id = 1