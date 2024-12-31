-- QBCore Police Script Database Schema

CREATE TABLE IF NOT EXISTS police_jobs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    officer_name VARCHAR(100) NOT NULL,
    badge_number VARCHAR(20) NOT NULL UNIQUE,
    rank VARCHAR(50) NOT NULL,
    department VARCHAR(100) NOT NULL,
    hire_date DATE NOT NULL,
    active BOOLEAN DEFAULT TRUE
);

CREATE TABLE IF NOT EXISTS police_vehicles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_plate VARCHAR(10) NOT NULL UNIQUE,
    vehicle_model VARCHAR(50) NOT NULL,
    assigned_officer VARCHAR(100),
    status VARCHAR(50) DEFAULT 'available',
    last_maintenance DATE
);

CREATE TABLE IF NOT EXISTS police_reports (
    id INT AUTO_INCREMENT PRIMARY KEY,
    report_number VARCHAR(20) NOT NULL UNIQUE,
    officer_name VARCHAR(100) NOT NULL,
    incident_date DATE NOT NULL,
    incident_details TEXT NOT NULL,
    suspect_name VARCHAR(100),
    suspect_details TEXT,
    status VARCHAR(50) DEFAULT 'open'
);

-- Add more tables as needed for the police script
