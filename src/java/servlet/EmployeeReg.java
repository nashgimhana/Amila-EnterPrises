/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author RM.LasanthaRanga@gmail.com
 */
@WebServlet(name = "EmployeeReg", urlPatterns = {"/EmployeeReg"})
public class EmployeeReg extends HttpServlet {

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HashMap<String, String> emp = new HashMap<>();
        emp.put("position", request.getParameter("position"));
        emp.put("fname", request.getParameter("fname"));
        emp.put("lname", request.getParameter("lname"));
        emp.put("adl1", request.getParameter("adl1"));
        emp.put("adl2", request.getParameter("adl2"));
        emp.put("con1", request.getParameter("con1"));
        emp.put("con2", request.getParameter("con2"));
        
        boolean b = model.GetInstans.getEmpModle().saveEmplooee(emp);
        if(b){
        response.sendRedirect("index.html");
        }else{}
    }

}
