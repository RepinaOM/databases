CREATE TABLE regions
(
    Id_region SERIAL PRIMARY KEY,
    Name_region CHARACTER VARYING(30),
    Code_region INTEGER
);
CREATE TABLE vehicle_categories
(
    Id_category SERIAL PRIMARY KEY,
    Name_category CHARACTER VARYING(3),
    Description TEXT
);
CREATE TABLE departments (
    Id_department SERIAL PRIMARY KEY,
    Name_department CHARACTER VARYING(90),
    Code_department INTEGER,
    Id_region INTEGER references regions(Id_region)
);
CREATE TABLE places_registration
(
    Id_place_registration SERIAL PRIMARY KEY,
    Name_place CHARACTER VARYING(50),
    Id_region INTEGER references regions(Id_region)
);
CREATE TABLE drivers
(
    Id_driver SERIAL PRIMARY KEY,
    Name_driver CHARACTER VARYING(20),
    Last_name_driver CHARACTER VARYING(20),
    Patronymic_driver CHARACTER VARYING(20),
    Photo CHARACTER VARYING(200),
    Date_birth DATE,
    Id_place_registration INTEGER references places_registration(Id_place_registration)
);
CREATE TABLE drivers_licenses
(
    Id_driver_license SERIAL PRIMARY KEY,
    Series INTEGER,
    Number INTEGER,
    Date_issue DATE,
    Id_driver INTEGER references drivers(Id_driver),
    Id_department INTEGER references departments(Id_department)
);
CREATE TABLE categories_license
(
    Id_category_license SERIAL PRIMARY KEY,
    Date_receipt_category DATE,
    Id_driver INTEGER references drivers(Id_driver),
    Id_category INTEGER references vehicle_categories(Id_category)
);


