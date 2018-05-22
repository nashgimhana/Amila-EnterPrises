/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nash
 */
public class UnitSave extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp){
        try {
            String name = req.getParameter("name");
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
