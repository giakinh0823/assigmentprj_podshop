/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin.product;

import controller.admin.auth.BaseAuthAdminController;
import controller.admin.group.EditGroupController;
import dal.auth.UserDBContext;
import dal.product.GroupDBContext;
import dal.product.PodDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.auth.User;
import model.product.Group;
import model.product.Pod;
import utils.Validate;

/**
 *
 * @author giaki
 */
public class PodDetailController extends BaseAuthAdminController {

     @Override
    protected boolean isPermissionGet(HttpServletRequest request) {
        UserDBContext userDB = new UserDBContext();
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("admin");
        int numEdit = userDB.getNumberOfPermission(user.getId(), "POD", "READ");
        return numEdit >= 1;
    }

    @Override
    protected boolean isPermissionPost(HttpServletRequest request) {
        UserDBContext userDB = new UserDBContext();
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("admin");
        int numEdit = userDB.getNumberOfPermission(user.getId(), "POD", "READ");
        return numEdit >= 1;
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         Validate validate = new Validate();
        try {
            String idString = validate.getField(request, "id", true);
            int id = validate.fieldInt(idString, "Error get field id");
            PodDBContext podDB = new PodDBContext();
            Pod pod = podDB.get(id);
            request.setAttribute("pod", pod);
            request.getRequestDispatcher("/views/admin/pod/podDetail.jsp").forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(PodDetailController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response)
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
