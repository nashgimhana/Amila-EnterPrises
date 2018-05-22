/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

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
            System.out.println("awaaasdsad");
            String name = request.getParameter("name");
            int unitid = Integer.parseInt(request.getParameter("unit"));
            if (unitid==0) {
               System.out.println("Error unit passing");

            } else {
                System.out.println(unitid);
            }
        } catch (Exception e) {
        }
    }

}
