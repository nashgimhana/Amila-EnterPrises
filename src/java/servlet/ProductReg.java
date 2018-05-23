/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controller.stockcontroller;
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
public class ProductReg extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        try {
//            System.out.println("awaaasdsad");
            String name = request.getParameter("name");
            int unitid = Integer.parseInt(request.getParameter("unit"));
            if (unitid != 0) {
                int SaveProducts = new stockcontroller().SaveProducts(name, unitid);
                if (SaveProducts != 0) {
                    response.sendRedirect("view/ProductReg.jsp");
                } else {
                    System.out.println("Error method calling");
                }
            } else {

                System.out.println("Error unit passing");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
