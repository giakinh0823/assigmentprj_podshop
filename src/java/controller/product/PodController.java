/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.product;

import dal.product.GroupDBContext;
import dal.product.PodDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.product.Group;
import model.product.Pod;

/**
 *
 * @author giaki
 */
public class PodController extends HttpServlet {

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PodDBContext podDB = new PodDBContext();
        ArrayList<Pod> pods = podDB.list();
        GroupDBContext groupDB = new GroupDBContext();
        ArrayList<Group> groups = groupDB.list();
        request.setAttribute("groups", groups);
        request.setAttribute("pods", pods);
        request.getRequestDispatcher("/views/product/pod.jsp").forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
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
