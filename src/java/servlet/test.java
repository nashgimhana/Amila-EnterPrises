/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

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

            org.json.simple.parser.JSONParser parser = new org.json.simple.parser.JSONParser();
            JsonObject json = (JsonObject) parser.parse(name);
            JsonValue x = json.get("name");
            String y = x.toString();
            System.out.println(y);
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
