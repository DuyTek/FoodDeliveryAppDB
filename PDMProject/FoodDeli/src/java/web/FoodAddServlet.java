/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package web;

import dao.FoodDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Food;

/**
 *
 * @author Quan Truong
 */
@WebServlet(name = "Food", urlPatterns = {"/food","/add"})
public class FoodAddServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private FoodDAO foodDAO; 
    @Override
    public void init() {
        foodDAO = new FoodDAO();
    }
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String action = request.getServletPath();

        try {
            switch (action) {
                case "/add":
                    addFood(request, response);
                    break;
                default:
                    listFood(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
             doGet(request, response);
    }
    private void addFood(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        int orderId = 1; 
        foodDAO.addFood(orderId,id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Order.jsp");
        dispatcher.forward(request, response);
    }
    private void listFood(HttpServletRequest request, HttpServletResponse response)
    throws  IOException, ServletException {
        PrintWriter out = response.getWriter();
        FoodDAO dao = new FoodDAO(); 
        List<Food> list = dao.selectAllFood(); 
        request.setAttribute("listFood", list);
        request.getRequestDispatcher("restaurant1.jsp").forward(request, response);
        out.print(list); 
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
