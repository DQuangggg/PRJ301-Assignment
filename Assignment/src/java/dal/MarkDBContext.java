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
            String sql = "select a.sid, a.scode, a.sname, d.m1, d.m2, d.m3, d.m4, d.mfe  \n"
                    + "from Student a INNER JOIN [Assignment].[dbo].[Group] b ON a.gid = b.gid \n"
                    + "INNER JOIN Course c ON c.gid  = b.gid\n"
                    + "INNER JOIN Marks d ON a.sid = d.sid  AND b.gid = d.gid \n"
                    + "AND c.cid = d.cid\n"
                    + "WHERE b.gid = ? AND c.cid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, gid);
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
