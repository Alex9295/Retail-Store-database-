# Database System

A simple e-commerce database system implemented in SQL with Products, Customers, and Orders tables.

## 📋 Table of Contents
- [Database Schema](#-database-schema)
- [Features](#-features)
- [Installation](#-installation)
- [Sample Data](#-sample-data)
- [Example Queries](#-example-queries)
- [License](#-license)

## 🗃 Database Schema

### Tables Structure

#### `Products`
| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| `product_id` | INTEGER | PRIMARY KEY | Unique product identifier |
| `name` | VARCHAR(20) | NOT NULL | Product name |
| `category` | VARCHAR(20) | CHECK (Electronics, Clothing, Grocery, Furniture) | Product category |
| `price` | DECIMAL(10,2) | NOT NULL, CHECK (>0) | Product price |
| `stock_quantity` | INTEGER | CHECK (>=0) | Inventory count |

#### `Customers`
| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| `customer_id` | INTEGER | PRIMARY KEY | Unique customer identifier |
| `name` | VARCHAR(100) | NOT NULL | Customer name |
| `email` | VARCHAR(100) | UNIQUE, NOT NULL | Customer email |
| `phone` | VARCHAR(20) | UNIQUE, NOT NULL | Customer phone |
| `address` | VARCHAR(200) | DEFAULT 'Not Provided' | Customer address |

#### `Orders`
| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| `order_id` | INTEGER | PRIMARY KEY | Unique order identifier |
| `customer_id` | INTEGER | NOT NULL, FOREIGN KEY | Customer reference |
| `order_date` | DATE | DEFAULT SYSDATE | Order creation date |
| `total_amount` | NUMBER | CHECK (>0) | Order total amount |
| `Remarks_if_any` | VARCHAR2(4000) | DEFAULT 'No Remarks' | Optional order notes |

## ✨ Features

- ✅ Data integrity enforcement through constraints
- 🔗 Referential integrity with foreign key relationships
- 📊 Pre-populated sample data
- 🔍 Example queries included
- 🛠 Simple and clean database design

## 🚀 Installation

1. Copy the entire SQL script from the repository
2. Execute it in your preferred database management system (Oracle, MySQL, PostgreSQL, etc.)
3. The script will:
   - Drop existing tables (if they exist)
   - Create all three tables with constraints
   - Insert sample data
   - Include example queries

## 📊 Sample Data

The database comes pre-populated with:

- **10 customers** with complete contact information
- **10 products** across 4 categories:
  - Electronics
  - Clothing
  - Grocery
  - Furniture
- **10 orders** with various statuses:
  - Delivered
  - Payment Pending
  - Cancelled
  - Refund Issued

