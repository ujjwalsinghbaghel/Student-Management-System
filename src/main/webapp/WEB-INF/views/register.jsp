<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<body>
<h2>Register</h2>

<p style="color:red">${error}</p>

<form action="register" method="post">
    Name: <input type="text" name="name" required><br><br>
    Username: <input type="text" name="username" required><br><br>
    Password: <input type="password" name="password" required><br><br>
    <button type="submit">Register</button>
</form>
<p>Already registered? <a href="loginPage">Login</a></p>
</body>
</html>