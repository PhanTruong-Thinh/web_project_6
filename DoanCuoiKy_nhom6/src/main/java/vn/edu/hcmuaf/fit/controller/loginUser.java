package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Account_User;
import vn.edu.hcmuaf.fit.service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "loginUser", value = "/loginUser")
public class loginUser extends HttpServlet {

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
//<<<<<<< HEAD
//        String text = request.getParameter("text");
//        String password = request.getParameter("password") ;
//        Account_User user = UserService.getInstance().checkLogin(text, password);

//        if (user == null) {
////>>>>>>> d004f9e8a6759ea3676808dc2adcf90c8c86dc25
//                HttpSession session = request.getSession(true);
//                session.setAttribute("error", "User or password is incorrect");
//                response.sendRedirect("login_home.jsp");
//
//        } else if (user != null && user.getTrangThai()==1) {
//                HttpSession session = request.getSession(true);
//                session.setAttribute("auth", user);
//                session.setAttribute("maKH", user.getMaKH());
//
//                request.getRequestDispatcher("/home.jsp").forward(request, response);
////            response.sendRedirect(request.getContextPath()+"/trang-chu");
//        } else {
//                request.setAttribute("error", "Sai tài khoản hoặc mật khẩu");
//                request.getRequestDispatcher("/login_home.jsp").forward(request, response);
//        }
//            response.getWriter().println(user.getTenKH());
    }

}
