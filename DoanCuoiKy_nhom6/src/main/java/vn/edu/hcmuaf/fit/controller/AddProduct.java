//package vn.edu.hcmuaf.fit.controller;
//
//import org.apache.commons.fileupload.FileItem;
//import org.apache.commons.fileupload.disk.DiskFileItemFactory;
//import org.apache.commons.fileupload.servlet.ServletFileUpload;
//import vn.edu.hcmuaf.fit.service.UserService;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.File;
//import java.io.IOException;
//import java.util.List;
//
//public class AddProduct extends HttpServlet {
////    private static final String UPLOAD_DIRECTORY = "\\src\\main\\webapp\\ImageproductNew\\add";
//    private static final long serialVersionUID = 1;
//    int index = vn.edu.hcmuaf.fit.service.ProductService.getData().size();
//    private UserService ProductService;
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
////        System.out.println("sdfnjsdk");
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException {
//        if (ServletFileUpload.isMultipartContent(request)) {
//            try {
//                int count = 0, i = 3;
//                int chart = 97;
//
//                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
//                out.println(multiparts.size());
//                for (FileItem item : multiparts) {
//                    if (!item.isFormField()) {
//                        String menu = request.getParameter("menu");
//                        int discount = Integer.parseInt(request.getParameter("discount"));
//                        int price = Integer.parseInt(request.getParameter("price"));
//                        String name = request.getParameter("name");
//                        String nsx = request.getParameter("nsx");
//
//                        String hsd = request.getParameter("hsd");
//
//                        String brand = request.getParameter("brand");
//                        String mota = request.getParameter("mota");
//                        double weight = Double.parseDouble(request.getParameter("weight"));
//                        String origin = request.getParameter("origin");
//                        int inventory = Integer.parseInt(request.getParameter("inventory"));
//
//                        ProductService.getInstance().addProd(index + 1, menu, discount, price, name);
//                        ProductService.getInstance().addCT_Prod(index + 1, nsx, hsd, brand, mota, weight, origin, inventory);
//                        String nameImg = new File(item.getName()).getName();
//                        out.println(UPLOAD_DIRECTORY + File.separator + nameImg);
//                        item.write(new File(UPLOAD_DIRECTORY + File.separator + nameImg));
//
//                        ProductService.getInstance().addImg(index + 1, "prdimg" + Character.charCount(chart++) + i++, UPLOAD_DIRECTORY + File.separator + nameImg, count);
//                        out.println("aaaa");
//                        count = 1;
//                    }
//                }
//                request.setAttribute("message", "File uploaded successfully.");
//            } catch (Exception ex) {
//                request.setAttribute("message", "File upload failed due to : " + ex);
//            }
//        } else {
//            request.setAttribute("message", "Sorry this servlet only handles file upload request.");
//        }
//
//        response.sendRedirect("http://localhost:8080/BHNFoods/AdminManagePr?kind=0&page=1");
//    }
//
//    public static void main(String[] args) {
//        out.println(UPLOAD_DIRECTORY);
//    }
//}