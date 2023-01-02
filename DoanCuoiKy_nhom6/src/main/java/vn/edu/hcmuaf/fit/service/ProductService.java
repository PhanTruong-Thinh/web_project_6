package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.Product;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

public class ProductService {
    public static List<Product> getData(){
//        List<Product> list= new LinkedList<>();
//        try {
//            Statement statement = DBConnect.getInstall().get();
//            if(statement!=null) {
//                ResultSet rs = statement.executeQuery("select  * from products");
//                while (rs.next()){
//                    list.add(new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4)));
//                }
//            }
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//         return  list;
       return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select  * from products").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static void main(String[] args) {
        String sql="INSERT INTO products VALUES";
        List<Product> data = getData();
        for (Product p :  data) {
            sql+="("+p.getId()+",'"+p.getName()+"','"+p.getImg()+"',"+p.getPrice()+"),";
        }
        System.out.println(sql);
    }
}
