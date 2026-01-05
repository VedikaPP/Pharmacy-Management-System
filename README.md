# 💊 Pharmacy Management System

A full-stack **Pharmacy Management System** developed to automate and manage day-to-day pharmacy operations such as medicine details, stock management, billing, and admin control.

---

## 📌 Project Description

The **Pharmacy Management System** is a web-based application developed using **JSP, Java, MySQL, and Apache Tomcat**.  
It helps manage pharmacy operations such as **medicine details, stock management, sales, and admin login** in an efficient and organized manner.

This project is mainly developed for **academic / college purposes**.

---

## ✨ Features

### 👨‍💼 Admin Panel
- Secure admin login
- Dashboard overview
- Add / Update / Delete medicines
- Manage medicine categories
- Manage suppliers
- Manage staff/employees
- View stock availability
- Generate and manage bills
- View sales records

### 🧾 Billing System
- Automated billing process
- Real-time total calculation
- Invoice generation
- Stock auto-update after billing

### 📦 Inventory Management
- Medicine stock tracking
- Low-stock monitoring
- Expiry date management

---

## 🛠️ Technologies Used

- **Frontend:** HTML, CSS, JSP  
- **Backend:** Java (JSP, JDBC)  
- **Database:** MySQL  
- **Server:** Apache Tomcat  
- **IDE:** NetBeans  
- **JDK:** JDK 8 / JDK 11  

---


## ⚙️ Installation & Run Steps

### 🔹 Step 1: Install Required Software
Install the following software on your system:

- **JDK 8 or JDK 11**
- **NetBeans IDE (Java EE / Web & Enterprise version)**
- **Apache Tomcat Server (9 or above)**
- **XAMPP**
- **MySQL JDBC Connector**

---

### 🔹 Step 2: Setup XAMPP
1. Open **XAMPP Control Panel**
2. Start:
   - ✅ Apache
   - ✅ MySQL
3. Click **Admin** next to MySQL to open **phpMyAdmin**

---

### 🔹 Step 3: Create & Import Database
1. Open **phpMyAdmin**
2. Create a new database:
   pharmacy_management_system
3. Click **Import**
4. Select the provided `database.sql` file
5. Click **Go**

---

### 🔹 Step 4: Configure Database Connection
1. Open the project in **NetBeans**
2. Locate the database connection file (example: `dbconnection.jsp`)
3. Update database credentials if required:
```java
String url = "jdbc:mysql://localhost:3306/pharmacy_management_system";
String username = "root";
String password = "";


### 🔹 Step 5: Setup Apache Tomcat in NetBeans
### 🔹 Step 6: Set JDK in NetBeans
### 🔹 Step 7: Import Project in NetBeans
### 🔹 Step 8: Add MySQL JDBC Driver 
### 🔹 Step 9: Run the Project
