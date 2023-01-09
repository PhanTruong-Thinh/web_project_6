package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.concurrent.ThreadLocalRandom;

@MultipartConfig(fileSizeThreshold = 1024 * 1024,
        maxFileSize = 1024 * 1024 * 5,
        maxRequestSize = 1024 * 1024 * 5 * 5)
@WebServlet(urlPatterns = "/admin-add-product")
public class AdminAddProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String tenSp = req.getParameter("tensp");
        String danhmuc = req.getParameter("danhmuc");
        String giaban = req.getParameter("giaban");
        String giakhuyenmai = req.getParameter("giakhuyenmai");
        String xuatsu = req.getParameter("xuatsu");
        String img = null;

        Part filePart = req.getPart("img");
        String filename = filePart.getSubmittedFileName();

        for (Part part : req.getParts()) {
            part.write("D:\\" + filename);
        }

        String tinhtrang = req.getParameter("tinhtrang");
        String motasp = req.getParameter("motasp");
        ProductService.addProduct("SP" + ThreadLocalRandom.current().nextInt(32, 99 + 1), danhmuc, tenSp, xuatsu, img, Integer.parseInt(tinhtrang), 100, 1);
        req.getRequestDispatcher("add_product_admin.jsp").forward(req, resp);
    }
}
