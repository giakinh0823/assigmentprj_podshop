/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.cart;

import com.google.gson.Gson;
import dal.cart.CartDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.auth.User;
import model.cart.Cart;
import utils.Validate;

/**
 *
 * @author giaki
 */
public class UpdateQuantityCart extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Validate validate = new Validate();
            String idString = validate.getFieldAjax(request, "id", true);
            String quantityString = validate.getFieldAjax(request, "quantity", true);
            int id = validate.fieldInt(idString, "error update cart");
            int quantity = validate.fieldInt(quantityString, "error update cart");
            HttpSession session = request.getSession();
            CartDBContext cartDB = new CartDBContext();
            ArrayList<Cart> carts = new ArrayList<Cart>();
            User user = (User) session.getAttribute("user");
            if (user != null) {
                carts = cartDB.findByUser(user.getId());
                Cart old_cart = cartDB.findByPodUser(id, user.getId());
                old_cart.setQuantity(quantity);
                cartDB.update(old_cart);
            } else {
                carts = (ArrayList<Cart>) session.getAttribute("carts");
                if (carts == null) {
                    carts = new ArrayList<Cart>();
                }
            }
            
            int quantity_cart = 0;

            for (Cart item : carts) {
                if(item.getPod().getId()==id){
                    item.setQuantity(quantity);
                }
                quantity_cart += item.getQuantity();
            }
            session.setAttribute("carts", carts);
            session.setAttribute("quantity", quantity_cart);
            String json = new Gson().toJson(quantity_cart);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(json);
        } catch (Exception ex) {
            Logger.getLogger(UpdateQuantityCart.class.getName()).log(Level.SEVERE, null, ex);
        }
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
