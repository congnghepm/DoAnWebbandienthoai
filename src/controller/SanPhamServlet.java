package controller;

import dao.SanPhamDAOImpl;
import model.SanPham;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/SanPhamServlet")
public class SanPhamServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private SanPhamDAOImpl spDAOImpl = new SanPhamDAOImpl();
    private SanPham sp = new SanPham();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String ndtimkiem = request.getParameter("ndtimkiem");
        System.out.println(ndtimkiem);


        if(ndtimkiem!="")
        {
            request.setAttribute("ndtimkiem", ndtimkiem);
            RequestDispatcher rd = request.getRequestDispatcher("search.jsp");
            rd.forward(request, response);
        }
        else
        {
            response.sendRedirect("search.jsp");
        }




    }

}
