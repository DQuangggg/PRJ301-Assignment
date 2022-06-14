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

/**
 *
 * @author ADMIN
 */
public class GroupDBContext extends DBContext<Group>{
    public ArrayList<Group> search(int cid){
        ArrayList<Group> groups = new  ArrayList<>();
        try {
            String sql = "select gid, gname , gcdate , gcslot , a.cid , a.cname  from  [Assignment].[dbo].[Group] b INNER JOIN Course a ON b.cid = a.cid WHERE a.cid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, cid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {                
                Group g = new Group();
                g.setGid(rs.getInt("gid"));
                g.setGname(rs.getString("gname"));
                g.setGcdate(rs.getDate("gcdate"));
                g.setGcslot(rs.getInt("gcslot"));
                Course c = new Course();
                c.setCid(rs.getInt("cid"));
                c.setCname(rs.getString("cname"));
                g.setCourse(c);
                groups.add(g);
            }
        } catch (Exception ex) {
            Logger.getLogger(GroupDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return groups;
        
    }
    
    
    
    @Override
    public ArrayList<Group> list() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public Group get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

   
    public static void main(String[] args)
    {
        GroupDBContext db = new GroupDBContext();
    }
    
}
