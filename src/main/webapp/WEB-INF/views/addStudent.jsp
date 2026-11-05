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
    <title>Add Student</title>

    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family: Arial, sans-serif;
        }

        body{
            height:100vh;
            display:flex;
            justify-content:center;
            align-items:center;
            background: linear-gradient(135deg, #e3f2fd, #f1f8ff);
        }

        .container{
            background:white;
            width:400px;
            padding:30px;
            border-radius:15px;
            box-shadow:0 8px 20px rgba(0,0,0,0.15);
        }

        h2{
            text-align:center;
            color:#1565c0;
            margin-bottom:25px;
        }

        .form-group{
            margin-bottom:15px;
        }

        label{
            display:block;
            margin-bottom:6px;
            font-weight:bold;
            color:#333;
        }

        input{
            width:100%;
            padding:10px;
            border:1px solid #ccc;
            border-radius:8px;
            font-size:14px;
            transition:0.3s;
        }

        input:focus{
            outline:none;
            border-color:#2196f3;
            box-shadow:0 0 5px rgba(33,150,243,0.4);
        }

        .btn{
            width:100%;
            padding:12px;
            border:none;
            border-radius:8px;
            background:#2196f3;
            color:white;
            font-size:16px;
            cursor:pointer;
            transition:0.3s;
        }

        .btn:hover{
            background:#1976d2;
        }

        .back{
            display:block;
            text-align:center;
            margin-top:15px;
            text-decoration:none;
            color:#1565c0;
            font-weight:bold;
        }

        .back:hover{
            text-decoration:underline;
        }
    </style>

</head>
<body>

<div class="container">

    <h2>Add Student</h2>

    <form action="addStudent" method="post">

        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" required>
        </div>

        <div class="form-group">
            <label>Age</label>
            <input type="number" name="age" required>
        </div>

        <div class="form-group">
            <label>Address</label>
            <input type="text" name="address" required>
        </div>

        <button type="submit" class="btn">
            Add Student
        </button>

    </form>

    <a href="dashboard" class="back">← Back to Dashboard</a>

</div>

</body>
</html>