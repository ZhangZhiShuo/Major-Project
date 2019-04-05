/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package robust;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author java2
 */
public class download extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String[] filedetails = request.getQueryString().split(",");
            String filename = null, email1 = null;
            /* TODO output your page here. You may use following sample code. */
          //  String[] filedetails = request.getQueryString().split(",");
            //String filename = null, hashcode = null;
            //String email = request.getParameter("email");
            //String filename = request.getParameter("filename");
           
            int i=0;
           
            InputStream is = null;
            String data1 = null;
            String skey = null;
            Connection con = Dbconnection.getConnection();
            Statement st = con.createStatement();
            ResultSet rt = st.executeQuery("select * from upload where filename='" + filedetails[0] + "' AND  email='" + filedetails[1] + "' AND  skey='" + filedetails[2] + "' ");
            if (rt.next()) {
                //filename = rt.getString("filename");
                skey = rt.getString("skey");
                 data1 = rt.getString("data1");
                //is = (InputStream) rt.getAsciiStream("data");
            } 
            String content = rt.getString("data1");
            response.setHeader("Content-Disposition", "attachment;filename=\"" + filedetails[0] + "\"");
            out.write(content);
           
            int rank1=0;
            Connection conn=Dbconnection.getConnection();
            Statement st1=conn.createStatement();
            ResultSet rs1=st1.executeQuery("select rank1 from upload where filename='"+filedetails[0]+"' AND  email='" + filedetails[1] + "'");
if(rs1.next()){
    rank1=rs1.getInt("rank1");
}
            int Count=rank1+1;
             PreparedStatement pstmt=con.prepareStatement("update upload set rank1='"+Count+"' where filename='"+filedetails[0]+"' AND  email='" + filedetails[1] + "'");
       pstmt.executeUpdate();
     
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            response.sendRedirect("dataconsumerdownload2.jsp?deac=success");
            Logger.getLogger(download.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            response.sendRedirect("dataconsumerdownload2.jsp?deac=success");
            Logger.getLogger(download.class.getName()).log(Level.SEVERE, null, ex);
        }
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
