/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.course;

import dal.CourseDBContext;
import dal.MarkDBContext;
import dal.StudentDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Course;
import model.Mark;
import model.Student;

/**
 *
 * @author ADMIN
 */
public class StudentViewMark extends HttpServlet {

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

        StudentDBContext dbs = new StudentDBContext();
        ArrayList<Student> students = dbs.list();
        request.setAttribute("students", students);
        CourseDBContext dbc = new CourseDBContext();
        ArrayList<Course> courses = dbc.list();
        request.setAttribute("courses", courses);

        request.getRequestDispatcher("../view/group/Student_View.jsp").forward(request, response);
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
       int cid = Integer.parseInt(request.getParameter("cid"));
       int sid = Integer.parseInt(request.getParameter("sid"));
       
        MarkDBContext dbmark = new MarkDBContext();
        ArrayList<Mark> marks1 = dbmark.searchST(sid, cid);
        request.setAttribute("marks1", marks1);
        
        StudentDBContext dbStu = new StudentDBContext();
        ArrayList<Student> students = dbStu.list();
        request.setAttribute("students", students);
        request.setAttribute("sid", sid);
        
        CourseDBContext dbCourse = new CourseDBContext();
        ArrayList<Course> courses = dbCourse.list();
        request.setAttribute("courses", courses);
        request.setAttribute("cid", cid);
        
        request.getRequestDispatcher("../view/group/Student_View.jsp").forward(request, response);
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
