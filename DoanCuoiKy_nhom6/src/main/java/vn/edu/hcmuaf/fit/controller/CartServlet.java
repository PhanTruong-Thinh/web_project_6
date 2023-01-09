package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Account_User;
import vn.edu.hcmuaf.fit.model.CartItem;
import vn.edu.hcmuaf.fit.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CartServlet", urlPatterns = "/cart")
public class CartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Account_User user = (Account_User) req.getSession().getAttribute("auth");
        if (user == null) {
            resp.sendRedirect(req.getContextPath() + "/loginUser");
        } else {
            String idProduct = req.getParameter("id");
            if (idProduct != null) {
                List<CartItem> carts = new ArrayList<>();
                int quantity = Integer.parseInt(req.getParameter("quantity"));
                CartItem cart = new CartItem(user.getMaKH(), idProduct, quantity);
                carts.add(cart);
                ProductService.putCart(carts);
                resp.sendRedirect(req.getHeader("referer"));
            }
        }


    }
}
