-- Create database
CREATE DATABASE homepage_db;
USE homepage_db;

-- Users Table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Code Listings Table
CREATE TABLE codes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    file_url VARCHAR(255) NOT NULL,
    uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Services Table
CREATE TABLE services (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data into codes
INSERT INTO codes (title, description, file_url) 
VALUES 
('Sample Code 1', 'This is a sample code description.', 'https://example.com/code1'),
('Sample Code 2', 'Another example code.', 'https://example.com/code2');

-- Insert sample data into services
INSERT INTO services (name, description, price) 
VALUES 
('Web Development', 'Full-stack website development services.', 500.00),
('Code Review', 'Review and optimize your code.', 150.00);
