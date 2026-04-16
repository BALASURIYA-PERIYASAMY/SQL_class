#workbench
#school_management
USE school_management;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    enrollment_year INT,
    class_grade INT,
    contact_email VARCHAR(100)
);
DESCRIBE Students;


#library_catalog
USE library_catalog;

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(150),
    author_name VARCHAR(100),
    isbn_number VARCHAR(20),
    genre VARCHAR(50),
    publication_year INT,
    availability_status VARCHAR(20) -- e.g., 'Available', 'Borrowed'
);
DESCRIBE Books;


#hospital_records
USE hospital_records;

CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    gender CHAR(1),
    date_of_birth DATE,
    blood_group VARCHAR(5),
    emergency_contact VARCHAR(15),
    admission_date DATETIME
);
DESCRIBE Patients;


#inventory_control
USE inventory_control;

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    sku_code VARCHAR(50),
    category VARCHAR(50),
    unit_price DECIMAL(10, 2),
    stock_quantity INT,
    supplier_id INT
);
DESCRIBE Products;


#employee_payroll
USE employee_payroll;

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_title VARCHAR(50),
    department VARCHAR(50),
    hire_date DATE,
    base_salary DECIMAL(10, 2)
);
DESCRIBE Employees;


#ecommerce_store
USE ecommerce_store;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATETIME,
    total_amount DECIMAL(10, 2),
    payment_status VARCHAR(20),
    shipping_address VARCHAR(255),
    tracking_number VARCHAR(50)
);
DESCRIBE Orders;

#banking_core
USE banking_core;

CREATE TABLE Accounts (
    account_number VARCHAR(20) PRIMARY KEY,
    account_holder_name VARCHAR(100),
    account_type VARCHAR(20), -- e.g., 'Savings', 'Checking'
    current_balance DECIMAL(15, 2),
    currency_code CHAR(3),
    branch_code VARCHAR(10),
    status VARCHAR(15) -- e.g., 'Active', 'Frozen'
);
DESCRIBE Accounts;

#railway_booking
USE railway_booking;

CREATE TABLE Tickets (
    ticket_id INT PRIMARY KEY,
    pnr_number VARCHAR(20) UNIQUE,
    train_number VARCHAR(10),
    passenger_name VARCHAR(100),
    journey_date DATE,
    seat_number VARCHAR(10),
    booking_status VARCHAR(20) -- e.g., 'Confirmed', 'Waitlist'
);
DESCRIBE Tickets;

#hotel_reservation
USE hotel_reservation;

CREATE TABLE Reservations (
    reservation_id INT PRIMARY KEY,
    guest_name VARCHAR(100),
    room_number INT,
    check_in_date DATE,
    check_out_date DATE,
    number_of_guests INT,
    total_price DECIMAL(10, 2)
);
DESCRIBE Reservations;


#restaurant_pos
USE restaurant_pos;

CREATE TABLE MenuItems (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(100),
    category VARCHAR(50), -- e.g., 'Starter', 'Main', 'Dessert'
    description TEXT,
    price DECIMAL(6, 2),
    is_vegetarian BOOLEAN,
    is_available BOOLEAN
);
DESCRIBE  MenuItems;


#terminal
#music_streaming_app
USE music_streaming_app;

CREATE TABLE Tracks (
    track_id INT PRIMARY KEY,
    title VARCHAR(200),
    artist_name VARCHAR(100),
    album_name VARCHAR(100),
    duration_seconds INT,
    genre VARCHAR(50),
    release_date DATE
);
DESCRIBE Tracks;

#job_portal
USE job_portal;

CREATE TABLE JobPostings (
    job_id INT PRIMARY KEY,
    job_title VARCHAR(100),
    company_name VARCHAR(100),
    location_city VARCHAR(50),
    employment_type VARCHAR(20), -- e.g., 'Full-time', 'Contract'
    salary_range VARCHAR(50),    -- e.g., '$60k-$80k'
    posted_date DATE
);
DESCRIBE JobPostings;

#social_media_platform
USE social_media_platform;

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(30) UNIQUE,
    email VARCHAR(100),
    password_hash VARCHAR(255),
    join_date DATETIME,
    bio_text VARCHAR(255),
    is_verified BOOLEAN
);
DESCRIBE Users;

#weather_monitoring
USE weather_monitoring;

CREATE TABLE StationReadings (
    reading_id INT PRIMARY KEY,
    station_id VARCHAR(20),
    recorded_at DATETIME,
    temperature_celsius DECIMAL(4, 1),
    humidity_percentage INT,
    wind_speed_kmh DECIMAL(5, 2),
    precipitation_mm DECIMAL(5, 2)
);
DESCRIBE StationReadings;


#traffic_control_system
USE traffic_control_system;

CREATE TABLE Incidents (
    incident_id INT PRIMARY KEY,
    location_coords VARCHAR(50), 
    incident_type VARCHAR(50),  
    severity_level INT,   
    reported_time DATETIME,
    status VARCHAR(20), 
    description TEXT
);
DESCRIBE Incidents;