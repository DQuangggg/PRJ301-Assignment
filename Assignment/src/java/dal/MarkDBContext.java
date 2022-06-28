/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Course;
import model.Group;
import model.Mark;
import model.Student;

/**
 *
 * @author ADMIN
 */
public class MarkDBContext extends DBContext<Mark> {

    public ArrayList<Mark> search(int gid, int cid) {
        ArrayList<Mark> marks = new ArrayList<>();
        try {
            String sql = "select DISTINCT  a.mid ,a.m1 , a.m2 , a.m3 , a.m4 , a.mfe ,b.cid , b.cname , c.gid , c.gname   from Marks a INNER JOIN Course b ON a.cid = b.cid\n"
                    + "INNER JOIN [Assignment].[dbo].[Group] c ON a.cid = b.cid \n"
                    + "where b.cid = ? AND c.gid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, cid);
            stm.setInt(2, gid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Mark m = new Mark();
                m.setMid(rs.getInt("mid"));
                m.setM1(rs.getFloat("m1"));
                m.setM2(rs.getFloat("m2"));
                m.setM3(rs.getFloat("m3"));
                m.setM4(rs.getFloat("m4"));
                m.setMfe(rs.getFloat("mfe"));
                
                Course c = new Course();
                c.setCid(rs.getInt("cid"));
                c.setCname(rs.getString("cname"));

                Group g = new Group();
                g.setGid(rs.getInt("gid"));
                g.setGname(rs.getString("gname"));

                marks.add(m);
            }
        } catch (Exception ex) {
            Logger.getLogger(MarkDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return marks;
    }

    public ArrayList<Mark> searchST(int sid, int cid) {
        ArrayList<Mark> marks1 = new ArrayList<>();
        try {
            String sql = "Select DISTINCT a.m1 , a.m2 , a.m3 , a.m4 , a.mfe ,b.sid , b.sname , c.cid , c.cname  from Marks a INNER JOIN Student b ON a.sid = b.sid\n"
                    + "INNER JOIN Course c ON a.cid = c.cid\n"
                    + "Where b.sid = ? and c.cid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, sid);
            stm.setInt(2, cid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Mark m = new Mark();
                m.setMid(rs.getInt("mid"));
                m.setM1(rs.getFloat("m1"));
                m.setM2(rs.getFloat("m2"));
                m.setM3(rs.getFloat("m3"));
                m.setM4(rs.getFloat("m4"));
                m.setMfe(rs.getFloat("mfe"));

                Student s = new Student();
                s.setSid(rs.getInt("sid"));
                s.setSname(rs.getString("sname"));

                Course c = new Course();
                c.setCid(rs.getInt("cid"));
                c.setCname(rs.getString("cname"));
                
                m.setStudent(s);
                marks1.add(m);
            }
        } catch (Exception ex) {
            Logger.getLogger(MarkDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return marks1;
    }

    @Override
    public ArrayList<Mark> list() {
        ArrayList<Mark> marks = new ArrayList<>();
        try {
            String sql = "select mid from Marks";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Mark m = new Mark();
                m.setMid(rs.getInt("mid"));
                marks.add(m);
            }
        } catch (Exception e) {
        }
        return marks;
    }

    @Override
    public Mark get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Mark model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Mark model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Mark model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
