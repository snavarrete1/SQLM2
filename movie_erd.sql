--Create tables--
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	payment_info VARCHAR(50)
)

CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(250),
	movie_genre VARCHAR (100),
	movie_rating VARCHAR(100),
	release_date DATE
)

CREATE TABLE ticket(
	ticket_number SERIAL PRIMARY KEY,
	ticket_type VARCHAR(25),
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movies,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customer,
	total_cost NUMERIC(8,2)
)

CREATE TABLE concession(
	order_number SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customer,
	order_total NUMERIC(10,2)

)

--Insert DATA into customer table--
INSERT INTO customer(
	customer_id,
	payment_info

)

VALUES(
	1,
	'credit card'

);

INSERT INTO customer(
	customer_id,
	payment_info

)

VALUES(
	2,
	'cash'

);
--Insert DATA into movies table--
INSERT INTO movies(
	movie_id,
	movie_name,
	movie_genre,
	movie_rating,
	release_date 
)


VALUES(
	1,
	'2001: A Space Odyssey',
	'sci-fi',
	'G',
	'1968-04-03'

);


INSERT INTO movies(
	movie_id,
	movie_name,
	movie_genre,
	movie_rating,
	release_date 
)


VALUES(
	2,
	'Interstellar',
	'sci-fi',
	'PG-13',
	'2014-10-26'

);
--Insert DATA into ticket table--
INSERT INTO ticket(
	ticket_number,
	ticket_type,
	movie_id,
	customer_id,
	total_cost
)

VALUES(
	1,
	'adult',
	1,
	1,
	'12.99'
);

INSERT INTO ticket(
	ticket_number,
	ticket_type,
	movie_id,
	customer_id,
	total_cost
)

VALUES(
	2,
	'child',
	2,
	2,
	'8.99'
);
--Insert DATA into concession table--
INSERT INTO concession(
	order_number,
	customer_id,
	order_total
)

VALUES(
	1,
	1,
	'25.40'
);

INSERT INTO concession(
	order_number,
	customer_id,
	order_total
)

VALUES(
	2,
	2,
	'11.31'
);












