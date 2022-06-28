/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Course;
import model.Group;
import model.Student;

/**
 *
 * @author ADMIN
 */
public class StudentDBContext extends DBContext<Student> {

    public ArrayList<Student> search(int gid, int cid) {
        ArrayList<Student> students = new ArrayList<>();
        try {
            String sql = "select a.sid, a.scode, a.sname, c.cid , c.cname , b.gid , b.gname \n"
                    + "from Student a INNER JOIN [Assignment].[dbo].[Group] b ON a.gid = b.gid \n"
                    + "INNER JOIN Course c ON c.gid  = b.gid\n"
                    //                    + "INNER JOIN Marks d ON a.sid = d.sid AND b.gid = d.gid \n"
                    //                    + "AND c.cid = d.cid\n"
                    + "WHERE b.gid = ? AND c.cid = ? ";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, gid);
            stm.setInt(2, cid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Student s = new Student();
                s.setSid(rs.getInt("sid"));
                s.setSname(rs.getString("sname"));
                s.setScode(rs.getString("scode"));
                Group g = new Group();
                g.setGid(rs.getInt("gid"));
                g.setGname(rs.getString("gname"));
                Course c = new Course();
                c.setCid(rs.getInt("cid"));
                c.setCname(rs.getString("cname"));
                students.add(s);
            }

        } catch (Exception e) {
        }

        return students;

    }

//    public ArrayList<Student> search(int gid) {
//        ArrayList<Student> students = new ArrayList<>();
//        try {
//            String sql = "select a.sid, a.scode, a.sname ,b.gid , b.gname \n"
//                    + "from Student a INNER JOIN [Assignment].[dbo].[Group] b ON a.gid = b.gid \n"
//                    + "WHERE b.gid = ? ";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setInt(1, gid);
//            ResultSet rs = stm.executeQuery();
//            while (rs.next()) {
//                Student s = new Student();
//                s.setSid(rs.getInt("sid"));
//                s.setSname(rs.getString("sname"));
//                s.setScode(rs.getString("scode"));
//                Group g = new Group();
//                g.setGid(rs.getInt("gid"));
//                g.setGname(rs.getString("gname"));
//                students.add(s);
//            }
//
//        } catch (Exception ex) {
//             Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
//        }
//
//        return students;
//
//    }
    @Override
    public ArrayList<Student> list() {
        ArrayList<Student> students = new ArrayList<>();
        try {
            String sql = "select DISTINCT sid , scode , sname from Student";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Student s = new Student();
                s.setSid(rs.getInt("sid"));
                s.setScode(rs.getString("scode"));
                s.setSname(rs.getString("sname"));
                students.add(s);
            }
        } catch (Exception e) {
        }
        return students;
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

    public static void main(String[] args) {
        StudentDBContext db = new StudentDBContext();
    }
}
