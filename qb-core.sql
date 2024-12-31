-- QBCore Database Schema

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    identifier VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL,
    money INT DEFAULT 0,
    bank INT DEFAULT 0,
    job VARCHAR(50) DEFAULT 'unemployed',
    rank INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE vehicles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    owner VARCHAR(50) NOT NULL,
    plate VARCHAR(10) NOT NULL UNIQUE,
    vehicle VARCHAR(50) NOT NULL,
    garage VARCHAR(50) DEFAULT 'public',
    state INT DEFAULT 0,
    fuel INT DEFAULT 100,
    engine INT DEFAULT 1000,
    body INT DEFAULT 1000,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE inventory (
    id INT AUTO_INCREMENT PRIMARY KEY,
    owner VARCHAR(50) NOT NULL,
    item VARCHAR(50) NOT NULL,
    count INT DEFAULT 1,
    slot INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Add more tables as needed for your QBCore setup
