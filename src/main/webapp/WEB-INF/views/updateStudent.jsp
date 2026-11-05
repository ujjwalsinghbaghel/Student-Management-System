<%@ page contentType="text/html;charset=UTF-8" %>
<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("loginPage");
        return;
    }
%>
<html>
<body>
<h2>Update Student</h2>
<form action="updateStudent" method="post">
    <input type="hidden" name="id" value="${student.id}">

    Name: <input type="text" name="name" value="${student.name}" required><br><br>
    Age: <input type="number" name="age" value="${student.age}" required><br><br>
    Address: <input type="text" name="address" value="${student.address}" required><br><br>
    <button type="submit">Update</button>
</form>
<a href="students">Back</a>
</body>
</html>