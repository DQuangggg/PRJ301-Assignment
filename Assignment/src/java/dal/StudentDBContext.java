/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Course;
import model.Group;
import model.Student;

/**
 *
 * @author ADMIN
 */
public class StudentDBContext extends DBContext<Student>{
   public ArrayList<Student> search (int gid , int cid){
       ArrayList<Student> students = new  ArrayList<>();
       try {
           String sql = "SELECT DISTINCT a.sid , a.sname , a.scode , a.sattendance , a.smail ,a.snote ,b.gid , b.cid FROM Student a \n" +
                        "INNER JOIN [Assignment].[dbo].[Group] b ON a.gid = b.gid and a.cid = b.cid WHERE b.gid = ? and b.cid = ?  ORDER BY a.scode ASC ";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, gid);
            stm.setInt(2, cid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {               
               Student s = new Student();
               s.setSid(rs.getString("sid"));
               s.setSname(rs.getString("sname"));
               s.setScode(rs.getString("scode"));
               s.setSattendance(rs.getBoolean("sattendance"));
               s.setSmail(rs.getString("smail"));
               s.setSnote(rs.getString("snote"));
               Group g = new Group();
               g.setGid(rs.getInt("gid"));
               Course c = new Course();
               c.setCid(rs.getInt("cid"));
               s.setGroups(g);
               s.setCourses(c);
               students.add(s);
           }
            
       } catch (Exception e) {
       }
       
       
       return students ;
    
}
           

    @Override
    public ArrayList<Student> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Student get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    public static void main(String[] args)
    {
        StudentDBContext db = new StudentDBContext();
        ArrayList<Student> acc = db.search(1, 1);
        System.out.println(acc);
    }
}
