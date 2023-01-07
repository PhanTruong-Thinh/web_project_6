package vn.edu.hcmuaf.fit.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MySQLConnector {
    private static final String url = "jdbc:mysql://localhost:3306/danhsachsanpham";
    private static Connection conn = null;
    private static MySQLConnector instance;

    private MySQLConnector() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, "root", "");
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static MySQLConnector getInstance() {
        if (instance == null) {
            instance = new MySQLConnector();
        }
        return instance;
    }

    public PreparedStatement getPreparedStatement(String sql) {
        if (conn == null) return null;
        try {
            return conn.prepareStatement(sql);
        } catch (SQLException e) {
            return null;
        }
    }
}
