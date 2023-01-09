package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Cart;

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
        List<Cart> carts = (List<Cart>) req.getSession().getAttribute("carts");
        String address = req.getParameter("address");

    }
}
