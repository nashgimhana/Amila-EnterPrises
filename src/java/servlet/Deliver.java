package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import pojo.Route;
import pojo.Vehicle;

/**
 *
 * @author RM.LasanthaRanga@gmail.com
 */
@WebServlet(name = "Deliver", urlPatterns = {"/Deliver"})
public class Deliver extends HttpServlet {

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

            if (request.getSession().getAttribute("d1") == null) {

                HttpSession session = request.getSession();
                HashMap<String, String> hm = new HashMap<String, String>();

                Session ses = conn.NewHibernateUtil.getSessionFactory().openSession();
                try {
                    hm.put("date", request.getParameter("date"));
                    Vehicle vehicle = (pojo.Vehicle) ses.load(pojo.Vehicle.class, Integer.parseInt(request.getParameter("vn")));
                    hm.put("vn", vehicle.getVehicleNumber());

                    Route route = (pojo.Route) ses.load(pojo.Route.class, Integer.parseInt(request.getParameter("root")));
                    hm.put("root", route.getName());
                    session.setAttribute("d1", hm);
                    response.sendRedirect("view/delivery.jsp#profile ");

                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    ses.close();
                }
            } else {
                request.getSession().removeAttribute("d1");
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
