🎓 Student Management System
A web-based Student Management System developed using Java, Servlet, JSP, JDBC, and MySQL. This application allows users to securely manage student records with authentication and complete CRUD operations.

🚀 Features
User Registration
User Login Authentication
Session Management
Dashboard Page
Add Student
View Students
Update Student Details
Delete Student Records
Logout Functionality
Form Validation
Responsive User Interface
🛠️ Technologies Used
Java
Servlet
JSP (Java Server Pages)
JDBC
MySQL
Maven
Apache Tomcat
📂 Project Structure
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
🔐 Authentication Features
Secure Login System
User Registration
Session-Based Authentication
Protected Dashboard Access
Logout Support
📋 Student Management Features
Add New Student
Display Student List
Update Student Information
Delete Student Records
🗄️ Database
Create a MySQL database and update the database configuration in:

src/main/java/util/DBUtil.java
Example:

String url = "jdbc:mysql://localhost:3306/student_db";
String username = "root";
String password = "your_password";
⚙️ Setup Instructions
Clone the repository
git clone https://github.com/ujjwalsinghbaghel/Student-Management-System.git
Open the project in IntelliJ IDEA or Eclipse.

Configure MySQL database.

Update database credentials in DBUtil.java.

Build the project using Maven.

mvn clean install
Deploy on Apache Tomcat Server.

Start the server and run the application.

🎯 Learning Outcomes
This project helped in understanding:

Java Web Development
MVC Architecture
JDBC Database Connectivity
Session Management
CRUD Operations
Servlet and JSP Integration
Maven Project Management
👨‍💻 Author
Ujjwal Singh

GitHub: https://github.com/ujjwalsinghbaghel
Email: ujjwalsingh.13b@gmail.com
⭐ Project Status
Completed and available for learning, practice, and demonstration purposes.
