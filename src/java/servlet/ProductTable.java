/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import com.sun.xml.ws.config.metro.parser.jsr109.ResAuthType;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.hibernate.hql.internal.ast.tree.RestrictableStatement;
import org.json.JSONArray;
import org.json.JSONObject;
import pojo.Product;

/**
 *
 * @author RM.LasanthaRanga@gmail.com
 */
@WebServlet(name = "ProductTable", urlPatterns = {"/ProductTable"})
public class ProductTable extends HttpServlet {

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
        String pname = request.getParameter("pname");

        JSONArray ja = new JSONArray();

        try (PrintWriter out = response.getWriter()) {
            Session ses = conn.NewHibernateUtil.getSessionFactory().openSession();
            try {
                Criteria cry = ses.createCriteria(pojo.Product.class);
                if (pname != null) {
                    if (pname.length() > 0) {
                        cry.add(Restrictions.like("name", pname, MatchMode.START));
                    }
                }

                List<pojo.Product> list = cry.list();
                for (Product product : list) {
                    if (product.getCurrentStock() > 0) {
                        JSONObject jo = new JSONObject();
                        jo.put("pid", product.getId());
                        jo.put("pname", product.getName());
                        jo.put("price", product.getCurrentPrice());
                        jo.put("unit", product.getUnits().getUnitName());
                        ja.put(jo);
                    }
                }
                out.println(ja.toString());
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                ses.close();
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
