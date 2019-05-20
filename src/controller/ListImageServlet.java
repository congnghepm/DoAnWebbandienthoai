package controller;

import connect.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/ListImageServlet")
public class ListImageServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String masp = request.getParameter("maSP");
        System.out.println("load hinh anh "+masp);
        byte[] img = null ;
        List<byte[]> arrays = new ArrayList<>();
        ServletOutputStream sos = null;

        try
        {
            System.out.println("Vào ListImageServlet");
            Connection conn = DBConnect.getConnect();
            String sql = "select FileHA from hinhanh_sp where MaSP='"+masp+"'";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next())
            {
                img = rs.getBytes(1);
                arrays.add(img);

                System.out.println("Đã load được ảnh Servlet: "+img);

                /*sos = response.getOutputStream();
                sos.write(img);
                System.out.println("Đọc được file hình Servlet");*/
            }
            for(int i = 0; i < arrays.size();i++)
            {
                System.out.println("Size arrays: "+arrays.size());
                System.out.println("Size arrays: "+arrays.get(i));
                /*byte[] image = arrays.get(i);*/
                sos = response.getOutputStream();
                sos.write(arrays.get(i));
                System.out.println("Đọc được file hình Servlet");
            }

        }

        catch(Exception e)
        {

        }

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
