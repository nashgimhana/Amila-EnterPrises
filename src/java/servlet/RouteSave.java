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
public class RouteSave extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String name = request.getParameter("routename");
            String discription = request.getParameter("discription");
            int saveRoute = new controller.RouteController().saveVehicles(name, discription);
            if (saveRoute != 0) {
                response.sendRedirect("view/Route.jsp");
            } else {
                System.out.println("fuck");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
