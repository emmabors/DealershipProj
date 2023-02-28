--EMMA
CREATE TABLE sales_person (
    sales_person_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

DROP TABLE sales_invoice

CREATE TABLE sales_invoice (
    invoice_id SERIAL PRIMARY KEY,
    sale_date VARCHAR(5),
    sales_person_id INTEGER,
    FOREIGN KEY (sales_person_id) REFERENCES sales_person(sales_person_id) ,
    car_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

SELECT *
FROM sales_invoice;

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_num VARCHAR(50),
    customer_address VARCHAR(50)
);

CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    color VARCHAR(50),
    car_year VARCHAR(50),
    for_sale BOOLEAN
);
--EMMA

-- MASON
CREATE TABLE mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);
CREATE TABLE mechanics_used (
    mechanics_used_id SERIAL PRIMARY KEY,
    mechanic_id INTEGER
);



CREATE TABLE service_ticket (
    service_ticket_id SERIAL PRIMARY KEY,
    date_of_service VARCHAR(50),
    service_done VARCHAR(300),
    -- service_done needs higher character limit for
    -- longer service done explinations
    car_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    mechanics_used_id INTEGER,
    FOREIGN KEY (mechanics_used_id) REFERENCES mechanics_used(mechanics_used_id)
);
-- MASON

ALTER TABLE sales_invoice
ALTER COLUMN sale_date set data type VARCHAR(100);

