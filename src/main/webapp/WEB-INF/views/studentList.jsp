<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("loginPage");
        return;
    }
%>
<html>
<body>
<h2>All Students</h2>

<table border="1" cellpadding="8">
    <tr>
        <th>ID</th><th>Name</th><th>Age</th><th>Address</th><th>Action</th>
    </tr>
    <c:forEach var="s" items="${students}">
        <tr>
            <td>${s.id}</td>
            <td>${s.name}</td>
            <td>${s.age}</td>
            <td>${s.address}</td>
            <td>
                <a href="updateStudentPage?id=${s.id}">Update</a>

                <form action="deleteStudent" method="post" style="display:inline"
                      onsubmit="return confirm('Kya aap sach me delete karna chahte hain?');">
                    <input type="hidden" name="id" value="${s.id}">
                    <button type="submit">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<a href="dashboard">Back</a>
</body>
</html>