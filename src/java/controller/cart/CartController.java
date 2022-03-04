/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.cart;

import dal.cart.CartDBContext;
import dal.product.GroupDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.auth.User;
import model.cart.Cart;
import model.product.Group;

/**
 *
 * @author giaki
 */
public class CartController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        CartDBContext cartDB = new CartDBContext();
        ArrayList<Cart> carts = new ArrayList<Cart>();
        User user = (User) session.getAttribute("user");
        if (user != null) {
            carts = cartDB.findByUser(user.getId());
        } else {
            carts = (ArrayList<Cart>) session.getAttribute("carts");
            if (carts == null) {
                carts = new ArrayList<Cart>();
            }
        }
        int quantity = 0;
        double totalPrice = 0;
        double realPrice = 0;
        for (Cart cart : carts) {
            quantity += cart.getQuantity();
            totalPrice += cart.getQuantity() * cart.getPod().getPrice();
            if (cart.getPod().isIsSale()) {
                realPrice += cart.getQuantity() * cart.getPod().getPrice() - (cart.getPod().getPrice() * (double)cart.getPod().getDiscount()/100);
            } else {
                realPrice += cart.getQuantity() * cart.getPod().getPrice();
            }
        }
        GroupDBContext groupDB = new GroupDBContext();
        ArrayList<Group> groups = groupDB.list();
        request.setAttribute("groups", groups);
        request.setAttribute("carts", carts);
        request.setAttribute("quantity", quantity);
        request.setAttribute("totalPrice", totalPrice);
        request.setAttribute("realPrice", realPrice);
        request.getRequestDispatcher("/views/cart/carts.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
