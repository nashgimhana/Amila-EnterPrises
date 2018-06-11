/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controller.stockcontroller;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
            String session = (String) request.getSession().getAttribute("grndetails");
            String[] splitses = session.split("/");
            int supid = Integer.parseInt(splitses[0]);
            System.out.println(supid);
            SimpleDateFormat formatter1 = new SimpleDateFormat("yyyy-mm-dd");
            Date date1 = formatter1.parse(splitses[1]);
            System.out.println(date1);
            String name = request.getParameter("obj");
            String[] split = name.split("/");
            System.out.println(split[1]);

            pojo.Grn saveGrn = new stockcontroller().saveGrn(supid, date1, supid);

//            org.json.JSONObject object = new org.json.JSONObject(name);
            JSONArray jsonArray = new JSONArray(split[0]);//import org.json jar eka use krna JSONArray ekakta string ekak convert kala
            for (int i = 0; i < jsonArray.length(); i++) {
                System.out.println("loop awaaa");
                JSONObject jsnObj = (JSONObject) jsonArray.get(i);
                String prname = (String) jsnObj.get("Product_Name");
                Double buyprice = Double.parseDouble((String) jsnObj.get("Buying_Price"));
                int casetype = Integer.parseInt((String) jsnObj.get("Case_Type"));
                Double qty = Double.parseDouble((String) jsnObj.get("Quantity"));
                Double prtot = Double.parseDouble((String) jsnObj.get("Product_Total"));
                Double dicount = Double.parseDouble((String) jsnObj.get("Total_Discount"));

                int saveGrnLog = new stockcontroller().saveGrnLog(saveGrn, prname, buyprice, qty, dicount, prtot, casetype);

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
