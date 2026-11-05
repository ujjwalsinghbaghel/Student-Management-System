package controller;

import entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import service.UserService;

import java.io.IOException;

public class LoginController extends HttpServlet {

    private UserService userService = new UserService();

    @Override
    protected void doPost(HttpServletRequest req,
                          HttpServletResponse resp)
            throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");

        // Username Validation
        if (username == null || username.trim().isEmpty()) {

            req.setAttribute("error", "Username is required!");

            req.getRequestDispatcher("/WEB-INF/views/login.jsp")
                    .forward(req, resp);
            return;
        }

        // Password Validation
        if (password == null || password.trim().isEmpty()) {

            req.setAttribute("error", "Password is required!");

            req.getRequestDispatcher("/WEB-INF/views/login.jsp")
                    .forward(req, resp);
            return;
        }

        // Login Check
        User user = userService.login(username, password);

        if (user != null) {

            HttpSession session = req.getSession();
            session.setAttribute("user", user);

            resp.sendRedirect("dashboard");

        } else {

            req.setAttribute("error",
                    "Wrong Username or Password!");

            req.getRequestDispatcher("/WEB-INF/views/login.jsp")
                    .forward(req, resp);
        }
    }
}