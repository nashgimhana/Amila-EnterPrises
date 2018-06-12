/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

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
import org.hibernate.criterion.Restrictions;
import org.json.JSONArray;
import org.json.JSONObject;
import pojo.Product;
import pojo.Vehicle;
import pojo.VehicleStock;

/**
 *
 * @author RM.LasanthaRanga@gmail.com
 */
@WebServlet(name = "SelectProduct", urlPatterns = {"/SelectProduct"})
public class SelectProduct extends HttpServlet {

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
            Session ses = conn.NewHibernateUtil.getSessionFactory().openSession();
            JSONArray ja = new JSONArray();
            JSONObject jo = new JSONObject();
            try {
                Product product = (pojo.Product) ses.load(pojo.Product.class, Integer.parseInt(request.getParameter("pname")));
                Vehicle vehicle = (pojo.Vehicle) ses.createCriteria(pojo.Vehicle.class).add(Restrictions.eq("vehicleNumber", request.getParameter("vid"))).uniqueResult();

                Criteria c = ses.createCriteria(pojo.VehicleStock.class);
                c.add(Restrictions.eq("product", product));
                c.add(Restrictions.eq("vehicle", vehicle));
                List<pojo.VehicleStock> list = c.list();
                if (list.size() > 0) {
                    pojo.VehicleStock vs = list.get(0);
                    jo.put("cqty", vs.getCurrentStock());
                    jo.put("tot", vs.getCurrentStock() * product.getCurrentPrice());
                }
                else{
                    jo.put("cqty", 0);
                    jo.put("tot", 0);
                }

                jo.put("cprice", product.getCurrentPrice());
                ja.put(jo);

            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                ses.close();
            }
            out.print(ja.toString());

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
