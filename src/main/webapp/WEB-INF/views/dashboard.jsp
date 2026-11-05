<%@ page contentType="text/html;charset=UTF-8" %>
<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("loginPage");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>

    <style>

        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:'Segoe UI',sans-serif;
        }

        body{
            min-height:100vh;
            background:linear-gradient(135deg,#eef7ff,#d6ecff);
        }

        /* Header */
        .header{
            height:70px;
            background:#1565c0;
            color:white;
            display:flex;
            justify-content:space-between;
            align-items:center;
            padding:0 40px;
            box-shadow:0 3px 10px rgba(0,0,0,0.15);
        }

        .logo{
            font-size:24px;
            font-weight:bold;
        }

        .user{
            font-size:16px;
        }

        /* Main Section */
        .main-container{
            width:90%;
            max-width:1200px;
            margin:40px auto;
        }

        .card{
            background:#fff;
            border-radius:20px;
            box-shadow:0 10px 25px rgba(0,0,0,0.1);
            overflow:hidden;
            display:flex;
        }

        /* Left Side */
        .left-panel{
            width:50%;
            padding:40px;
            display:flex;
            justify-content:center;
            align-items:center;
            background:#f5fbff;
        }

        .left-panel img{
            width:100%;
            max-width:400px;
        }

        /* Right Side */
        .right-panel{
            width:50%;
            padding:50px;
        }

        .welcome{
            color:#1565c0;
            font-size:32px;
            margin-bottom:15px;
        }

        .info{
            margin-bottom:15px;
            font-size:17px;
            color:#444;
        }

        .button-group{
            margin-top:35px;
        }

        .btn{
            display:block;
            width:100%;
            text-decoration:none;
            text-align:center;
            padding:14px;
            border-radius:10px;
            margin-bottom:15px;
            color:white;
            font-weight:bold;
            transition:.3s;
        }

        .add{
            background:#28a745;
        }

        .add:hover{
            background:#1e7e34;
        }

        .view{
            background:#1976d2;
        }

        .view:hover{
            background:#0d47a1;
        }

        .logout{
            background:#dc3545;
        }

        .logout:hover{
            background:#b21f2d;
        }

        .footer{
            text-align:center;
            padding:20px;
            color:#666;
            margin-top:20px;
        }

        @media(max-width:768px){

            .card{
                flex-direction:column;
            }

            .left-panel,
            .right-panel{
                width:100%;
            }
        }

    </style>
</head>

<body>

<div class="header">
    <div class="logo">🎓 Student Management System</div>
    <div class="user">
        Welcome, ${sessionScope.user.name}
    </div>
</div>

<div class="main-container">

    <div class="card">

        <!-- Technical Image -->
        <div class="left-panel">
            <img src="images/dashboard-tech.png" alt="Technology">
        </div>

        <!-- Dashboard Content -->
        <div class="right-panel">

            <h1 class="welcome">
                Dashboard
            </h1>

            <p class="info">
                <strong>Name:</strong>
                ${sessionScope.user.name}
            </p>

            <p class="info">
                <strong>Username:</strong>
                ${sessionScope.user.username}
            </p>

            <p class="info">
                <strong>Session ID:</strong>
                ${pageContext.session.id}
            </p>

            <div class="button-group">

                <a href="addStudentPage" class="btn add">
                    ➕ Add Student
                </a>

                <a href="students" class="btn view">
                    📋 View Students
                </a>

                <a href="logout" class="btn logout">
                    🚪 Logout
                </a>

            </div>

        </div>

    </div>

</div>

<div class="footer">
    © 2026 Student Management System | Developed by Ujjwal Singh
</div>

</body>
</html>