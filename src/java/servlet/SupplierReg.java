/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controller.suppliercontroller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nash
 */
public class SupplierReg extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        try {
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String adress = request.getParameter("adress");
            String email = request.getParameter("email");
            String contact1 = request.getParameter("contact1");
            String contact2 = request.getParameter("contact2");
            String details = request.getParameter("details");
//            System.out.println(fname);
//            System.out.println(lname);
//            System.out.println(adress);
//            System.out.println(contact1);
//            System.out.println(contact2);
//            System.out.println(details);
            suppliercontroller sc = new suppliercontroller();
            int savesup = sc.savesup(fname, lname, adress, email, contact1, contact2, details);
            if (savesup != 0) {
                response.sendRedirect("view/SupplierRegister.jsp");
            } else {
                System.out.println("fuck");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
