package controller;

import dao.SanPhamDAO;
import dao.SanPhamDAOImpl;
import model.Cart;
import model.Item;
import model.SanPham;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {

    private SanPhamDAOImpl spDAOImpl = new SanPhamDAOImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        String command = request.getParameter("command");
        String maSP = request.getParameter("maSP");

        System.out.println("ma san pham lan 1: "+ maSP);
        String sl = request.getParameter("soluong");


       /* String maSP2 = request.getParameter("msp");
        System.out.println("ma san pham lan 2: "+ maSP2);*/

        System.out.println("sô lượng là: "+sl);


        Cart cart = (Cart) session.getAttribute("cart");

        try{
            int mSP = Integer.parseInt(maSP);
         /* int mSP2 = Integer.parseInt(maSP2);*/


            SanPham sp = spDAOImpl.getSP(mSP);
            switch (command){

                case "plus":
                    if(cart.getCartItems().containsKey(mSP))
                    {
                        cart.plusToCart(mSP, new Item(sp, cart.getCartItems().get(mSP).getQuantity()));
                    }
                    else {
                        cart.plusToCart(mSP, new Item(sp, 1));
                    }
                    break;
               case "remove":
                    if(cart.getCartItems().containsKey(mSP))
                    {
                        cart.removeToCart(mSP);
                    }
                    break;
                case "sub":
                    if(cart.getCartItems().containsKey(mSP))
                    {
                        cart.subToCart(mSP,new Item(sp, cart.getCartItems().get(mSP).getQuantity()));
                    }
                    break;
            }

        }
        catch (Exception e)
        {
            e.printStackTrace();

            response.sendRedirect("blank.jsp");
        }
        session.setAttribute("cart", cart);

        response.sendRedirect("blank.jsp");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request, response);
    }
}
