/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Group;
import model.Student;

/**
 *
 * @author ADMIN
 */
public class StudentDBContext extends DBContext<Student>{
   public ArrayList<Student> search (String gcdate , int gcslot){
       ArrayList<Student> students = new  ArrayList<>();
       try {
           String sql = "select  a.sid , a.sname , a.scode , a.sattendance , a.smail ,a.snote ,b.gid , b.cid from Student a \n" +
                    "INNER JOIN [Assignment].[dbo].[Group] b On a.gid = b.gid and a.cid = b.cid where b.gcdate = ? and b.gcslot = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setDate(1, Date.valueOf(gcdate));
            stm.setInt(2, gcslot);
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
               g.setGcdate(rs.getDate("gcdate"));
               g.setGcslot(rs.getInt("gcslot"));
               s.setGroups(g);
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
    }
}
