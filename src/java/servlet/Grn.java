/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import org.json.*;
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

            String name = request.getParameter("obj");
            System.out.println(name);
//            org.json.JSONObject object = new org.json.JSONObject(name);

            JSONArray jsonArray = new JSONArray(name);//import org.json jar eka use krna JSONArray ekakta string ekak convert kala
            for (int i = 0; i < jsonArray.length(); i++) {
                System.out.println("loop awaaa");
                JSONObject jsnObj = (JSONObject) jsonArray.get(i);
                String finalValue = (String) jsnObj.get("Product_Name");
                System.out.println(finalValue);

            }
//            Gson g = new Gson();
//            testing p = g.fromJson(name, testing.class);
//            System.out.println(p.getProduct_Name());
//            System.out.println(p.getQuantity());
        } catch (Exception e) {
            e.printStackTrace();

        } finally {
            request.getSession().invalidate();
        }
    }
}
