package controller;

import connect.DBConnect;
import dao.BillDAOImpl;
import dao.BillDetailDAOImpl;
import model.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.DataBuffer;
import java.io.IOException;
import java.io.PrintWriter;
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

        if(!billDAOImpl.kiemTraEmail(email))
        {
            errormessage += "Email ";
        }

        if(!billDAOImpl.kiemTraSDT(sdt))
        {
            errormessage += "Số điện thoại ";
        }
        else {
            if(billDAOImpl.kiemTraSDTUnique(sdt))
            {
                errormessage +="SĐT đã tồn tại";
            }
        }

        if(errormessage=="")
        {
            System.out.println("kiem tra kh: "+(billDAOImpl.kiemTraKH(hoten, sdt, diachi, email)));

            if(!(billDAOImpl.kiemTraKH(hoten, sdt, diachi, email)))
            {

                KhachHang kh1 = new KhachHang();
                kh1.setTenKH(hoten);
                kh1.setDiaChi(diachi);
                kh1.setDienThoai(sdt);
                kh1.setEmail(email);
                billDAOImpl.insertKH(kh1);
                System.out.println("Vào kiểm tra khách hàng");
            }

            KhachHang h =  billDAOImpl.getKH(hoten, sdt, diachi,email);

            DonHang dh = new DonHang();
            dh.setTongTien(cart.totalCart());
            dh.setMaKH(h.getMaKH());

            billDAOImpl.insertBill(dh);

            System.out.println("tổng tiền: "+cart.totalCart());

            DonHang dh1 = billDAOImpl.getDH(cart.totalCart(), h.getMaKH());

            System.out.println("Mã đơn hàng: "+dh1.getMaDH());
            System.out.println("Mã khách hàng: "+dh1.getMaKH());

            for (Map.Entry<Integer, Item> list: cart.getCartItems().entrySet())
            {
                billDetailDAOImpl.insertBillDetail(new ChiTietDonHang(dh1.getMaDH(),list.getValue().getSanPham().getMaSP(),
                        list.getValue().getSanPham().getGiaBan(), list.getValue().getQuantity()));

               billDAOImpl.updateSoLuongSPTon(list.getValue().getSanPham().getMaSP(), list.getValue().getQuantity());
                System.out.println("Thêm chi tiết đơn  hàng thành công");


            }
            cart = new Cart();
            session.setAttribute("cart", cart);

            String errorMessage = "Đặt hàng thành công";
            String status = "success";
            showMessage(request,response, errorMessage, status);
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.include(request, response);

        }
        else {
            response.sendRedirect("checkout.jsp");
        }



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public void showMessage(HttpServletRequest request, HttpServletResponse response, String errormessage, String status)  throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal ('"+ errormessage + "','', '"+status+"');");
        out.println("});");
        out.println("</script>");
    }
}
