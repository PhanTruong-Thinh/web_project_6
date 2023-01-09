package vn.edu.hcmuaf.fit.controller.admin;


import vn.edu.hcmuaf.fit.controller.HomeServlet;
import vn.edu.hcmuaf.fit.model.Accout_Admin;
import vn.edu.hcmuaf.fit.service.AccAdminService;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "loginAdmin", value = "/loginAdmin")
public class LoginAdmin  extends HomeServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login_admin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username2 = request.getParameter("email");
        String password2 = request.getParameter("password");

        Accout_Admin user2 = AccAdminService.getInstance().checkLogin(username2, password2);
        if (user2 != null) {
            request.getSession(true).setAttribute("auth_admin", user2);
            request.getRequestDispatcher("admin.jsp").forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/loginAdmin");
        }
    }
}
