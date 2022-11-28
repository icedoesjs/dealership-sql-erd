INSERT INTO salesman (first_name, last_name)
VALUES ('john', 'smith'),
       ('sally', 'smith');

SELECT * FROM salesman;

INSERT INTO mechanic(first_name, last_name)
VALUES ('jeff', 'smith'),
       ('johnathon', 'smith');

SELECT * from mechanic;

INSERT INTO client(first_name, last_name, street_address)
VALUES ('bob', 'williams', '123 main street town Ohio 12345'),
       ('tammy', 'lynn', '123 main street town Virginia 12740');

SELECT * from client;

INSERT INTO vehicle(vin_number, color, make, model, model_year) 
VALUES('JM1NA3512P0416499', 'RED', 'MAZDA', 'MIATA', '1993'),
      ('JHMES16523S001299', 'WHITE', 'FORD', 'RAPTOR', '2017');

SELECT * from vehicle;

INSERT INTO ticket(customer_id, service_needed, service_date, vin_number)
VALUES(1, ARRAY ['Tie Rods', 'Oil Change'], '2021-12-20', 'JM1NA3512P0416499'),
      (2, ARRAY ['Oil Change', 'Head Gasket'], '2021-12-07', 'JHMES16523S001299')

SELECT * FROM ticket;

INSERT INTO invoice(vin_number, price, paid, customer_id, salesman_id)
VALUES('JM1NA3512P0416499', 100, TRUE, 1, 2),
      ('JHMES16523S001299', 2000, TRUE, 2, 1);

SELECT * FROM invoice;

INSERT INTO record(service_done, service_date, invoice_id, mechanic_id, vin_number)
VALUES(ARRAY ['Tie Rods', 'Oil Change', 'Tire Check'], '2021-12-20', 3, 1, 'JM1NA3512P0416499'),
      (ARRAY ['Oil Change', 'Head Gasket', 'Oil Pump Gasket'], '2021-12-09', 4, 2, 'JHMES16523S001299');

SELECT * FROM record;

