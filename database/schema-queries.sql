-- CREATE ALL TABLES IN DATABASE
-- Users Table 

CREATE TABLE users (
	user_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50),
	profile_pic VARCHAR(255),
	email VARCHAR(50) NOT NULL,
	password VARCHAR(50) NOT NULL
	);

-- Items Table 

CREATE TABLE items (
	item_id SERIAL PRIMARY KEY,
	user_id INT REFERENCES users(user_id) NOT NULL,
	parent_id INT REFERENCES items(item_id),
	emoji VARCHAR(7),
	name VARCHAR(255) NOT NULL,
	description TEXT,
	status VARCHAR(50) DEFAULT 'New' NOT NULL,
	priority VARCHAR(50),
	is_project BOOLEAN DEFAULT false NOT NULL,
	due_date DATE,
	completion_date DATE,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
	);

-- Tags Table 

CREATE TABLE tags (
	tag_id SERIAL PRIMARY KEY,
	user_id INT REFERENCES users(user_id) NOT NULL,
	tag_name VARCHAR(50) NOT NULL,
	color VARCHAR(7)
);

-- Item and Tags many-to-many relations

CREATE TABLE items_tags (
	itmes_tags_id SERIAL PRIMARY KEY,
	user_id INT REFERENCES users(user_id) NOT NULL,
	tag_id INT REFERENCES tags(tag_id) NOT NULL
);