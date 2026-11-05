package controller;

import entity.Student;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.StudentService;

import java.io.IOException;

public class AddStudentController extends HttpServlet {
    private StudentService studentService = new StudentService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Student s = new Student();
        s.setName(req.getParameter("name"));
        s.setAge(Integer.parseInt(req.getParameter("age")));
        s.setAddress(req.getParameter("address"));

        studentService.addStudent(s);
        resp.sendRedirect("students");
    }
}