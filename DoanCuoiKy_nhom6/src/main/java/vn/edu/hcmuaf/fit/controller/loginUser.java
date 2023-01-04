package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Account_User;
import vn.edu.hcmuaf.fit.service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "loginUser", value = "/doLoginUser")
public class loginUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String text= request.getParameter("text");
        String password=request.getParameter("password");
        Account_User user= UserService.getInstance().checkLogin(text,password);
        if(user==null){
            request.setAttribute("error","User or password is incorrect");
            request.getRequestDispatcher("login_home.jsp");

        }else{
            response.sendRedirect("index.jsp");
            HttpSession session=request.getSession(true);
            session.setAttribute("auth",user);

        }
    }
}
