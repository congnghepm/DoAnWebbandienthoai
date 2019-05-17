package controller;

import connect.DBConnect;
import dao.BillDAOImpl;
import dao.BillDetailDAOImpl;
import model.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.DataBuffer;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Map;

@WebServlet("/BillServlet")
public class BillServlet extends HttpServlet {

    private BillDAOImpl billDAOImpl = new BillDAOImpl();
    private BillDetailDAOImpl billDetailDAOImpl = new BillDetailDAOImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String hoten = request.getParameter("hoten");
        String email = request.getParameter("email");
        String diachi = request.getParameter("address");
        String sdt = request.getParameter("tel");

        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        KhachHang kh = (KhachHang) session.getAttribute("kh");

        String errormessage="";

        if(!billDAOImpl.kiemTraEmail(kh.getEmail()))
        {
            errormessage += "Email ";
        }

        if(!billDAOImpl.kiemTraSDT(kh.getDienThoai()))
        {
            errormessage += "Số điện thoại ";
        }

        if(errormessage=="")
        {
            Date date= (Date) java.util.Calendar.getInstance().getTime();
            DonHang dh = new DonHang();
            dh.setThoiGian(date);
            dh.setTongTien(cart.totalCart());
            dh.setMaKH(kh.getMaKH());

            for (Map.Entry<Integer, Item> item: cart.getCartItems().entrySet())
            {
                billDetailDAOImpl.insertBillDetail(new ChiTietDonHang());
            }



        }
        else {
            response.sendRedirect("checkout.jsp");
        }



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
