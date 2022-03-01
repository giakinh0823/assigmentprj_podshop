/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin.product;

import controller.admin.auth.BaseAuthAdminController;
import dal.auth.UserDBContext;
import dal.product.CategoryDBContext;
import dal.product.GroupDBContext;
import dal.product.StateDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.auth.User;
import model.product.Category;
import model.product.Group;
import model.product.State;

/**
 *
 * @author giaki
 */
public class AddPodsController extends BaseAuthAdminController {

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
        int numEdit = userDB.getNumberOfPermission(user.getId(), "POD", "CREATE");
        return numEdit >= 1;
    }

    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        GroupDBContext groupDB = new GroupDBContext();
        ArrayList<Group> groups = groupDB.list();
        CategoryDBContext categoryDB = new CategoryDBContext();
        ArrayList<Category> listCategory = categoryDB.list();
        StateDBContext stateDB = new StateDBContext();
        ArrayList<State> states = stateDB.list();
        request.setAttribute("listCategory", listCategory);
        request.setAttribute("states", states);
        request.setAttribute("groups", groups);
        request.getRequestDispatcher("/views/admin/pod/addPod.jsp").forward(request, response);
    }

    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
