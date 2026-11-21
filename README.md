# 🎓 Student Management System

A web-based Student Management System developed using **Java, Servlet, JSP, JDBC, and MySQL**. This application allows users to securely manage student records with authentication and complete CRUD operations.

---

## 🚀 Features

- User Registration
- User Login Authentication
- Session Management
- Dashboard Page
- Add Student
- View Students
- Update Student Details
- Delete Student Records
- Logout Functionality
- Form Validation
- Responsive User Interface

---

## 🛠️ Technologies Used

- Java
- Servlet
- JSP (Java Server Pages)
- JDBC
- MySQL
- Maven
- Apache Tomcat

---

## 📂 Project Structure

```text
src
├── main
│   ├── java
│   │   ├── controller
│   │   ├── dao
│   │   ├── entity
│   │   ├── service
│   │   └── util
│   └── webapp
│       ├── WEB-INF
│       │   └── views
│       └── index.jsp
```

---

## 🔐 Authentication Features

- Secure Login System
- User Registration
- Session-Based Authentication
- Protected Dashboard Access
- Logout Support

---

## 📋 Student Management Features

- Add New Student
- Display Student List
- Update Student Information
- Delete Student Records

---

## 🗄️ Database Configuration

Create a MySQL database and update the database configuration in:

```text
src/main/java/util/DBUtil.java
```

Example:

```java
String url = "jdbc:mysql://localhost:3306/student_db";
String username = "root";
String password = "your_password";
```

---

## ⚙️ Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/ujjwalsinghbaghel/Student-Management-System.git
```

### 2. Open the Project

Open the project in IntelliJ IDEA or Eclipse.

### 3. Configure MySQL Database

- Create a MySQL database.
- Update database credentials in `DBUtil.java`.

### 4. Build the Project

```bash
mvn clean install
```

### 5. Deploy on Apache Tomcat

- Add the project to Tomcat Server.
- Start the server.
- Run the application in your browser.

---

## 🎯 Learning Outcomes

This project helped in understanding:

- Java Web Development
- MVC Architecture
- JDBC Database Connectivity
- Session Management
- CRUD Operations
- Servlet and JSP Integration
- Maven Project Management

---

## 🚀 Future Enhancements

- Spring Boot Integration
- Hibernate / JPA Implementation
- Search and Filter Functionality
- Pagination Support
- Role-Based Authentication
- REST API Development
