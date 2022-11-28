CREATE TABLE salesman(
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20)
);

CREATE TABLE mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(50)
);

CREATE TABLE client (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(50),
    street_address VARCHAR(100)
);

CREATE TABLE vehicle(
    vin_number VARCHAR(17) PRIMARY KEY,
    color VARCHAR(15),
    make VARCHAR(20),
    model VARCHAR(20),
    model_year VARCHAR(4)
);

CREATE TABLE ticket (
    ticket_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES client(customer_id),
    service_needed TEXT [],
    service_date DATE,
    vin_number VARCHAR(17) REFERENCES vehicle(vin_number)
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    vin_number VARCHAR(17) REFERENCES vehicle(vin_number),
    price INT,
    paid BOOLEAN,
    customer_id INT REFERENCES client(customer_id),
    salesman_id INT REFERENCES salesman(staff_id)
);

CREATE TABLE record(
    record_id SERIAL PRIMARY KEY,
    service_done TEXT [],
    service_date DATE,
    invoice_id INT REFERENCES invoice(invoice_id),
    mechanic_id INT REFERENCES mechanic(mechanic_id),
    vin_number VARCHAR(17) REFERENCES vehicle(vin_number)
);


