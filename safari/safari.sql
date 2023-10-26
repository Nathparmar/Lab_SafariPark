DROP TABLE IF EXISTS assignment;
DROP TABLE IF EXISTS animal;
DROP TABLE IF EXISTS enclosure;
DROP TABLE IF EXISTS staff;

CREATE TABLE staff (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employee_number INT
);

CREATE TABLE enclosure (
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    capacity INT,
    closed_for_maintenance VARCHAR(255)
);

CREATE TABLE animal (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255),
    age INT,
    enclosure_id INT REFERENCES enclosure(id)

);

CREATE TABLE assignment (
    id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES staff(id),
    enclosure_id INT REFERENCES enclosure(id),
    day VARCHAR(255)
);
