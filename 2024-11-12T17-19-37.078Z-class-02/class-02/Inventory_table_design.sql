-- Active: 1735643552550@@127.0.0.1@3306@Inventory DB
--Users
CREATE TABLE Users (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `first_name` VARCHAR(50) NOT NULL,
    `last_name` VARCHAR(50) NOT NULL,
    `email` VARCHAR(100) NOT NULL UNIQUE,
    `mobile` VARCHAR(15) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `otp` VARCHAR(255) NOT NULL,
    `create_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE  CURRENT_TIMESTAMP()
)
--Categories
CREATE TABLE Categories (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL,
    `user_id` BIGINT(20) UNSIGNED NOT NULL,
    `create_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE  CURRENT_TIMESTAMP(),
    FOREIGN KEY (`user_id`) REFERENCES `Users`(`id`) ON UPDATE CASCADE ON DELETE RESTRICT
    )
--Products
CREATE TABLE Products (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_id` BIGINT(20) UNSIGNED NOT NULL,
    `category_id` BIGINT(20) UNSIGNED NOT NULL,
    `name` VARCHAR(100) NOT NULL,
    `price` VARCHAR(50) NOT NULL,
    `unit` VARCHAR(50) NOT NULL,
    `img_url` VARCHAR(100) NOT NULL,
    `create_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE  CURRENT_TIMESTAMP(),
    FOREIGN KEY (`user_id`) REFERENCES `Users`(`id`) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (`category_id`) REFERENCES `Categories`(`id`) ON UPDATE CASCADE ON DELETE RESTRICT
)


--Customers 

CREATE TABLE Customers (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `mobile` VARCHAR(15) NOT NULL,
    `user_id` BIGINT(20) UNSIGNED NOT NULL,
    `create_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE  CURRENT_TIMESTAMP(),
    FOREIGN KEY (`user_id`) REFERENCES `Users`(`id`) ON UPDATE CASCADE ON DELETE RESTRICT
)

--Invoice
CREATE TABLE Invoice (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `total` VARCHAR(50) NOT NULL,
    `discount` VARCHAR(50) NOT NULL,
    `vat` VARCHAR(50) NOT NULL,
    `payable` VARCHAR(50) NOT NULL,
    `user_id` BIGINT(20) UNSIGNED NOT NULL,
    `customer_id` BIGINT(20) UNSIGNED NOT NULL,
    `create_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE  CURRENT_TIMESTAMP(),
    FOREIGN KEY (`user_id`) REFERENCES `Users`(`id`) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (`customer_id`) REFERENCES `Customers`(`id`) ON UPDATE CASCADE ON DELETE RESTRICT
)
--invoice products
CREATE TABLE InvoiceProducts (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `invoice_id` BIGINT(20) UNSIGNED NOT NULL,
    `product_id` BIGINT(20) UNSIGNED NOT NULL,
    `user_id` BIGINT(20) UNSIGNED NOT NULL,
    `quantity` VARCHAR(50) NOT NULL,
    `sale_price` VARCHAR(50) NOT NULL,
    `create_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE  CURRENT_TIMESTAMP(),
    FOREIGN KEY (`invoice_id`) REFERENCES `Invoice`(`id`) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (`product_id`) REFERENCES `Products`(`id`) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (`user_id`) REFERENCES `Users`(`id`) ON UPDATE CASCADE ON DELETE RESTRICT
)