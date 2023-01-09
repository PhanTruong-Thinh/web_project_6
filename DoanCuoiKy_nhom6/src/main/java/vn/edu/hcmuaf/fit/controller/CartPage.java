package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Account_User;
import vn.edu.hcmuaf.fit.model.CartItem;
import vn.edu.hcmuaf.fit.service.CartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/cart-page")
public class CartPage extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Account_User user = (Account_User) req.getSession().getAttribute("auth");

        if (user != null) {
            List<CartItem> carts = CartService.getCarts(user.getMaKH());
            req.setAttribute("carts", carts);
            req.getSession().setAttribute("carts", carts);
            req.getRequestDispatcher("/shoping-cart.jsp").forward(req, resp);
        }


    }
}