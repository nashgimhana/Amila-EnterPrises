/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import com.google.gson.Gson;
import controller.testing;
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
public class Grn extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            System.out.println("awaaa");
            System.out.println(request.getSession().getAttribute("grndetails"));
            request.getSession().invalidate();
            String name = request.getParameter("obj");
            System.out.println(name);
            Gson g = new Gson();
            testing p = g.fromJson(name, testing.class);
            System.out.println(p.getProduct_Name());
            System.out.println(p.getQuantity());
        } catch (Exception e) {
        }
    }

}
