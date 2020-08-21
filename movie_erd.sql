CREATE TABLE Customer (
	customer_id SERIAL PRIMARY KEY,
	payment_info VARCHAR(50)
);

CREATE TABLE Concession  (
	order_number SERIAL PRIMARY KEY,
	order_amount NUMERIC(8,2),
	order_total NUMERIC(10,2), FOREIGN KEY(Customer)
);

CREATE TABLE Ticket (
	ticket_number SERIAL PRIMARY KEY,
	ticket_type VARCHAR(25), FOREIGN KEY(Movies)
	ticket_amount NUMERIC(6,2),
	total_cost NUMERIC(8,2),FOREIGN KEY(Customer)
);

CREATE TABLE Movies (
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(250),
	movie_genre VARCHAR(100),
	movie_rating VARCHAR(100),
	release_date DATE
);


	
