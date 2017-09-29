package Model.Controller;

import Model.DatabaseConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DisplayRecords extends HttpServlet {

    String QUERY;
    Connection CONN;
    Statement STMT;
    ResultSet RES;
    DatabaseConnection DBCONN;
    List lst = new ArrayList();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            DBCONN = new DatabaseConnection();
            CONN = DBCONN.setConnection();
            STMT = CONN.createStatement();

            QUERY = "SELECT * FROM dolgozok";
            RES = DBCONN.getResultset(QUERY, CONN);
            while( RES.next() )
            {
                String id = Integer.toString(RES.getInt("ID"));
                lst.add(id);
                lst.add(RES.getString("firstname"));
                lst.add(RES.getString("lastname"));
                lst.add(RES.getString("positio"));
                String salar = Integer.toString(RES.getInt("salary"));
                lst.add(salar);
                
                
            }
            RES.close();
            
            
        } catch (Exception e) {
            request.setAttribute("Error", e);
            RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
            rd.forward(request, response);
        } finally {
            request.setAttribute("dolgozokData", lst);
            RequestDispatcher rd = request.getRequestDispatcher("displayrecords.jsp");
            rd.forward(request, response);
             
            lst.clear();
            out.close();
           
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
