package connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.*;

public class DBConnect {

    public static Connection getConnect() throws SQLException {
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/webdienthoai?autoReconnect=true&useSSL=false";
            conn = DriverManager.getConnection(url, "root", "dungkim");


            System.out.println("Ket noi thanh cong");

        }
        catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        return conn;
    }
}

