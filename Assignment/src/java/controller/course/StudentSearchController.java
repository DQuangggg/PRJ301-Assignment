/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.course;

import dal.CourseDBContext;
import dal.GroupDBContext;
import dal.MarkDBContext;
import dal.StudentDBContext;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Course;
import model.Group;
import model.Mark;
import model.Student;

/**
 *
 * @author ADMIN
 */
public class StudentSearchController extends HttpServlet {
   
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
        GroupDBContext db = new GroupDBContext();
        ArrayList<Group> groups = db.list();
        request.setAttribute("groups", groups);
        
        CourseDBContext dbc = new CourseDBContext();
        ArrayList<Course> courses = dbc.list();
        request.setAttribute("courses", courses);
        
        StudentDBContext dbs = new StudentDBContext();
        ArrayList<Student> students = dbs.list();
        request.setAttribute("students", students);
        
        MarkDBContext dbm = new MarkDBContext();
        ArrayList<Mark> marks = dbm.list();
        request.setAttribute("marks", marks);
        
        request.getRequestDispatcher("../view/group/Teacher_View.jsp").forward(request, response);
        

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
        int cid = Integer.parseInt(request.getParameter("cid"));
        int gid = Integer.parseInt(request.getParameter("gid"));
        
        MarkDBContext dbmark = new MarkDBContext();
        ArrayList<Mark> marks = dbmark.search(gid, cid);
        request.setAttribute("marks", marks);
        
        StudentDBContext dbStu = new  StudentDBContext();
        ArrayList<Student> students = dbStu.search(gid, cid);
        request.setAttribute("students", students);
        
        CourseDBContext dbCourse = new CourseDBContext();
        ArrayList<Course> courses = dbCourse.list();
        request.setAttribute("courses", courses);
        request.setAttribute("cid", cid);
        
        GroupDBContext dbGro = new GroupDBContext();
        ArrayList<Group> groups = dbGro.list();
        request.setAttribute("groups", groups);
        request.setAttribute("gid", gid);
        
        request.getRequestDispatcher("../view/group/Teacher_View.jsp").forward(request, response);
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
