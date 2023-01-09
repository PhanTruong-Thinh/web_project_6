package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Account_User;
import vn.edu.hcmuaf.fit.service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "loginUser", value = "/loginUser")
public class LoginUser extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login_home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username2 = request.getParameter("username");
        String password2 = request.getParameter("password");

        Account_User user2 = UserService.getInstance().checkLogin(username2, password2);
        if (user2 != null) {
            request.getSession(true).setAttribute("auth", user2);
            response.sendRedirect(request.getContextPath() + "/trang-chu");
        } else {
            response.sendRedirect(request.getContextPath() + "/loginUser");
        }
    }

}
