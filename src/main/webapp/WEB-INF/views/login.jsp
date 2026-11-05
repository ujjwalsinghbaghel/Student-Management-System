<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>

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
            background:linear-gradient(to right,#e3f2fd,#f5f9ff);
        }

        .container{
            width:380px;
            background:white;
            padding:30px;
            border-radius:15px;
            box-shadow:0px 5px 20px rgba(0,0,0,0.15);
        }

        h2{
            text-align:center;
            color:#1976d2;
            margin-bottom:20px;
        }

        .error{
            color:red;
            text-align:center;
            font-weight:bold;
            margin-bottom:15px;
        }

        .input-group{
            margin-bottom:15px;
        }

        label{
            display:block;
            margin-bottom:5px;
            font-weight:bold;
        }

        input{
            width:100%;
            padding:10px;
            border:1px solid #ccc;
            border-radius:5px;
        }

        input:focus{
            outline:none;
            border-color:#1976d2;
        }

        .btn{
            width:100%;
            padding:10px;
            background:#1976d2;
            color:white;
            border:none;
            border-radius:5px;
            font-size:16px;
            cursor:pointer;
        }

        .btn:hover{
            background:#1565c0;
        }

        .register{
            text-align:center;
            margin-top:15px;
        }

        .register a{
            text-decoration:none;
            color:#1976d2;
            font-weight:bold;
        }

    </style>
</head>
<body>

<div class="container">

    <h2>Login</h2>

    <div class="error">
        ${error}
    </div>

    <form action="login" method="post">

        <div class="input-group">
            <label>Username</label>
            <input type="text" name="username">
        </div>

        <div class="input-group">
            <label>Password</label>
            <input type="password" name="password">
        </div>

        <button type="submit" class="btn">
            Login
        </button>

    </form>

    <div class="register">
        New User?
        <a href="registerPage">Register Here</a>
    </div>

</div>

</body>
</html>