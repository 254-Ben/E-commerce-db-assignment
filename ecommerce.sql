-- This SQL script creates a database schema for an e-commerce platform.
CREATE DATABASE ecommerce;
-- Use the created database
USE ecommerce;
-- Table for storing product category information
CREATE TABLE product_category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    clothing VARCHAR(50),
    electronics VARCHAR(50)
);
-- Table for storing product attribute information
CREATE TABLE product_attribute (
    id INT AUTO_INCREMENT PRIMARY KEY,
    material VARCHAR(50),
    weight DECIMAL(5, 2)
);
-- Table for storing product variation information
CREATE TABLE product_variation (
    id INT AUTO_INCREMENT PRIMARY KEY,
    size VARCHAR(10),
    color VARCHAR(20)
);
-- Table for storing product information
CREATE TABLE product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    brand VARCHAR(50),
    base price DECIMAL(10, 2),
    product_category_id INT,
    product_attribute_id INT,
    product_variation_id INT,
    FOREIGN KEY (product_category_id) REFERENCES product_category(id),
    FOREIGN KEY (product_attribute_id) REFERENCES product_attribute(id),
    FOREIGN KEY (product_variation_id) REFERENCES product_variation(id)
);
-- Table for storing atrribute category information
CREATE TABLE attribute_category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    physical VARCHAR(50),
    technical VARCHAR(50)
);
-- Table for storing attribute type information
CREATE TABLE attribute_type (
    id INT AUTO_INCREMENT PRIMARY KEY,
    description TEXT,
    description NUMBER,
    description BOOLEAN,
    attribute_category_id INT,
    FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(id)
);
-- Table for storing size category information
CREATE TABLE size_category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    clothng sizes VARCHAR(10), 
    shoe sizes VARCHAR(10)
);
-- Table for storing size option information
CREATE TABLE size_option (
    id INT AUTO_INCREMENT PRIMARY KEY,
    small VARCHAR(10),
    medium VARCHAR(10),
    large VARCHAR(10),
    extra_large VARCHAR(10),
    size_category_id INT,
    FOREIGN KEY (size_category_id) REFERENCES size_category(id)
);
-- Table for storing product image information
CREATE TABLE product_image (
    id INT AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(255),
    product_id INT,
    FOREIGN KEY (product_id) REFERENCES product(id)
);
-- Table for storing color information
CREATE TABLE color (
    id INT AUTO_INCREMENT PRIMARY KEY,
    color_name VARCHAR(20)
);
-- Table for storing Brand information
CREATE TABLE brand (
    id INT AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(50)
);
-- Table for storing product item information
CREATE TABLE product_item (
    id INT AUTO_INCREMENT PRIMARY KEY,
    barcode VARCHAR(50),
    quantity INT,
    product_id INT,
    product_variation_id INT,
    product_attribute_id INT,
    product_category_id INT,
    product_image_id INT,
    size_option_id INT,
    color_id INT,
    brand_id INT,
    attribute_category_id INT,
    attribute_type_id INT,
    size_category_id INT,
    FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(id),
    FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(id),
    FOREIGN KEY (size_category_id) REFERENCES size_category(id),
    FOREIGN KEY (product_variation_id) REFERENCES product_variation(id),
    FOREIGN KEY (product_attribute_id) REFERENCES product_attribute(id),
    FOREIGN KEY (product_category_id) REFERENCES product_category(id),
    FOREIGN KEY (product_image_id) REFERENCES product_image(id),
    FOREIGN KEY (size_option_id) REFERENCES size_option(id),
    FOREIGN KEY (color_id) REFERENCES color(id),
    FOREIGN KEY (brand_id) REFERENCES brand(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);




