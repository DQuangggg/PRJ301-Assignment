/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.LoginDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author ADMIN
 */
public class LoginController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        Cookie arr[] = request.getCookies();
        if (arr!=null) {
        for (Cookie o : arr ) {
            if (o.getName().equals("user")) {
                request.setAttribute("username", o.getValue());
            }
            if (o.getName().equals("pass")) {
                request.setAttribute("password", o.getValue());
            }
        }
        
        }
         request.getRequestDispatcher("view/group/login.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       String username = request.getParameter("username");
        String pass = request.getParameter("pass");
        String remember = request.getParameter("remember");
        LoginDBContext db = new LoginDBContext();
        Account account = db.Login(username, pass);
        if (account == null) {
           request.setAttribute("mess", "Wrong User Name or Password !");
           request.getRequestDispatcher("view/group/login.jsp").forward(request, response);
           
        }
        else           
        {
            HttpSession session = request.getSession();
            session.setAttribute("acc", account);
            Cookie u = new Cookie("user", username);
            Cookie p = new Cookie("pass", pass);
            u.setMaxAge(3600 * 24 * 7 * 52);
            
            if (remember!= null) {
                       p.setMaxAge(3600 * 24 * 7 * 52);
                }
                    else{
                         p.setMaxAge(0);
                    }
            
            
            
            response.addCookie(u);
            response.addCookie(p);
            response.sendRedirect("http://localhost:9999/Assignment/course/search");
        
        
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
