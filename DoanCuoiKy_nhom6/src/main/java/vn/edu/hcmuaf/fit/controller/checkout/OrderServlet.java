package vn.edu.hcmuaf.fit.controller.checkout;

import vn.edu.hcmuaf.fit.model.CartItem;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/order")
public class OrderServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        @SuppressWarnings("unchecked")
        List<CartItem> carts = (List<CartItem>) req.getSession().getAttribute("carts");
        String address = req.getParameter("address");

    }
}
