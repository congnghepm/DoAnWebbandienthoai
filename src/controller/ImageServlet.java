package controller;

import connect.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

@WebServlet("/ImageServlet")
public class ImageServlet extends javax.servlet.http.HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String masp=request.getParameter("maSP");
        System.out.println("load hinh anh "+masp);
        byte[] img = null;
        ServletOutputStream sos = null;
        String sql = "select FileHA from hinhanh_sp where MaSP='"+masp+"'";
        try
        {

            System.out.println("Vào rồi");
            Connection conn = DBConnect.getConnect();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if(rs.next())
            {

                img = rs.getBytes(1);

                System.out.println("Đã load được ảnh");
            }
            sos = response.getOutputStream();
            sos.write(img);

        }
        catch(Exception e)
        {

        }
    }
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
