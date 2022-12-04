CREATE TABLE Hub_driver
(
    Id_driver SERIAL PRIMARY KEY,
    Load_timestamp TIMESTAMP,
    Record_source CHARACTER VARYING(50)
);
CREATE TABLE Hub_department
(
    Id_department SERIAL PRIMARY KEY,
    Load_timestamp TIMESTAMP,
    Record_source CHARACTER VARYING(50)
);
CREATE TABLE Hub_region
(
    Id_region SERIAL PRIMARY KEY,
    Load_timestamp TIMESTAMP,
    Record_source CHARACTER VARYING(50)
);
CREATE TABLE Hub_place_registration
(
    Id_place_registration SERIAL PRIMARY KEY,
    Load_timestamp TIMESTAMP,
    Record_source CHARACTER VARYING(50)
);
CREATE TABLE Hub_vehicle_categories
(
    Id_vehicle_category CHARACTER VARYING(3) PRIMARY KEY,
    Load_timestamp TIMESTAMP,
    Record_source CHARACTER VARYING(50)
);
CREATE TABLE Link_driver_license
(
    S_N_driver_license INTEGER PRIMARY KEY,
    Id_driver INTEGER references Hub_driver(Id_driver),
    Id_department INTEGER references Hub_department(Id_department)
    Load_timestamp TIMESTAMP,
    Record_source CHARACTER VARYING(50)
);
CREATE TABLE Link_region_department 
(
    Id_region INTEGER references Hub_region(Id_region),
    Id_department INTEGER references Hub_department(Id_department)
    Load_timestamp TIMESTAMP,
    Record_source CHARACTER VARYING(50)
);
CREATE TABLE Link_region_place_registration
(
    Id_region INTEGER references Hub_region(Id_region),
    Id_place_registration INTEGER references Hub_place_registration(Id_place_registration)
    Load_timestamp TIMESTAMP,
    Record_source CHARACTER VARYING(50)
);
CREATE TABLE Link_place_registration_driver
(
    Id_driver INTEGER references Hub_driver(Id_driver),
    Id_place_registration INTEGER references Hub_place_registration(Id_place_registration),
    Load_timestamp TIMESTAMP,
    Record_source CHARACTER VARYING(50)
);
CREATE TABLE Link_category_driver
(
    Id_driver INTEGER references Hub_driver(Id_driver),
    Id_vehicle_category INTEGER references Hub_vehicle_categories(Id_vehicle_category),
    Load_timestamp TIMESTAMP,
    Record_source CHARACTER VARYING(50)
);
CREATE TABLE Satellite_driver
(
    Id_driver INTEGER references Hub_driver(Id_driver),
    Name_driver CHARACTER VARYING(20),
    Last_name_driver CHARACTER VARYING(20),
    Patronymic_driver CHARACTER VARYING(20),
    Photo CHARACTER VARYING(200),
    Date_birth DATE,
    Load_timestamp TIMESTAMP,
    Record_source CHARACTER VARYING(50)
);
CREATE TABLE Satellite_category
(
    Id_vehicle_category INTEGER references Hub_vehicle_categories(Id_vehicle_category),
    description_vehicles TEXT,
    Load_timestamp TIMESTAMP,
    Record_source CHARACTER VARYING(50)
);
CREATE TABLE Satellite_place_registration
(
    Id_place_registration INTEGER references Hub_place_registration(Id_place_registration),
    Name_place_registration CHARACTER VARYING(40),
    Load_timestamp TIMESTAMP,
    Record_source CHARACTER VARYING(50)
);
CREATE TABLE Satellite_region
(
    Id_region INTEGER references Hub_region(Id_region),
    Name_region CHARACTER VARYING(40),
    Code_region INTEGER,
    Load_timestamp TIMESTAMP,
    Record_source CHARACTER VARYING(50)
);

