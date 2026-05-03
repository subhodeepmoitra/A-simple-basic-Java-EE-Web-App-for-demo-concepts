/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.mavenproject1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.time.LocalDateTime;


/**
 *
 * @author Subhodeep
 */
@WebServlet("/myServlet")
public class myServlet extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet myServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet myServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        int int_id = Integer.parseInt(id);
        String name = request.getParameter("name");
        String source = request.getParameter("source");
        String destination = request.getParameter("destination");
        
        LocalDateTime localdate = LocalDateTime.now(); //get the local system date time
        
        System.out.println("New Log: "); //print the value in the server console
        System.out.println("ID: " + int_id); //print the value in the server console
        System.out.println("Name: " + name); //print the value in the server console
        System.out.println("Source: " + source); //print the value in the server console
        System.out.println("Destination: " + destination); //print the value in the server console
        System.out.println("Time: " + localdate); //print the value in the server console
        
        String url = "jdbc:postgresql://localhost:5432/test_java"; //oracle database connection
        String dbUSer = "postgres"; //oracle database username
        String dbPassword = "password"; //oracle database password
        
        try {
            Class.forName("org.postgresql.Driver"); //fetch the oracle database jdbc driver
            Connection con = DriverManager.getConnection(url, dbUSer, dbPassword); // create the connection
            String sql = "INSERT INTO emp_details (id, name, source, ddestination, duty_date) VALUES (?,?,?, ?, ?)"; //the sql query for data insertion
            PreparedStatement ps = con.prepareStatement(sql); //class for putting the form data into the respective '?'s in the sql query
            ps.setInt(1, int_id); //putting the value in sequence 1 i.e., the first ? in sql query
            ps.setString(2, name);//putting the value in sequence 2 i.e., the second ? in sql query
            ps.setString(3, source);//putting the value in sequence 3 i.e., the third ? in sql query
            ps.setString(4, destination);//putting the value in sequence 4 i.e., the fourth ? in sql query
            ps.setObject(5, localdate);//putting the value in sequence 5 i.e., the fifth ? in sql query
            
            ps.executeUpdate(); //executing the properly made sql query with the proper values
            con.close(); //closing the connection
            
            response.sendRedirect("index.jsp?msg=OK");
        } catch (Exception ex){
            ex.printStackTrace();
            response.getWriter().println("Error: " + ex.getMessage());
        }
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<body>");
        out.println("<script type='text/javascript'>");
        out.println("alert('Data Received');");
        out.println("location = 'index.jsp';");
        out.println("</script>");
        out.println("</body>");
        out.println("</html>");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
