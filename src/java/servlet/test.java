/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import com.google.gson.Gson;
import controller.testing;
import java.io.IOException;
import javafx.scene.chart.PieChart.Data;
import javax.json.JsonObject;
import javax.json.JsonValue;
import javax.json.stream.JsonParser;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jdk.nashorn.internal.parser.JSONParser;

/**
 *
 * @author Nash
 */
public class test extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            System.out.println("awaaa");
            String name = request.getParameter("obj");
            System.out.println(name);
            Gson g = new Gson();
            testing p = g.fromJson(name, testing.class);
            System.out.println(p.getName());
            System.out.println(p.getAge());
        } catch (Exception e) {
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {

        } catch (Exception e) {
        }
    }

}
