/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import pojo.GrnLog;
import pojo.Product;

/**
 *
 * @author RM.LasanthaRanga@gmail.com
 */
@WebServlet(name = "AddToVehicle", urlPatterns = {"/AddToVehicle"})
public class AddToVehicle extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            if (request.getParameter("pid") != null) {
                Session ses = conn.NewHibernateUtil.getSessionFactory().openSession();
                HashMap<Object, Object> hm = new HashMap<>();
                JSONArray ja = new JSONArray();
                try {
                    Product product = (pojo.Product) ses.load(pojo.Product.class, Integer.parseInt(request.getParameter("pid")));
                    Criteria c = ses.createCriteria(pojo.GrnLog.class);
                    c.add(Restrictions.eq("product", product)).list();
                    List<pojo.GrnLog> list = c.list();
                    int x = 0;
                    for (GrnLog grnLog : list) {
                        if (grnLog.getQuantity() > 0) {
                            JSONObject jo = new JSONObject();
                            jo.put("row", x);
                            jo.put("grnNo", grnLog.getGrn().getId());
                            jo.put("cqty", grnLog.getQuantity());
                            jo.put("date", grnLog.getGrn().getDate().toString());
                            jo.put("case", grnLog.getCaseType().getType());
                            jo.put("load", 0);
                            jo.put("vehiclNO", 0);
                            ja.put(jo);
                            x++;
                        }
                    }
                    out.print(ja.toString());
                } catch (Exception e) {
                } finally {
                    ses.close();
                }
            }

            if (request.getParameter("json") != null) {
                request.getParameter("json");
                System.out.println(request.getParameter("json"));
                try {
                    JSONArray joo = new JSONArray(request.getParameter("json"));
                    for (int i = 0; i < joo.length(); i++) {
                        JSONObject ob  = joo.getJSONObject(i);
                        System.out.println(ob.get("load"));
                    }
                } catch (JSONException ex) {
                    Logger.getLogger(AddToVehicle.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
