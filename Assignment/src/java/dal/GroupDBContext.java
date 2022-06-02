/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Group;

/**
 *
 * @author ADMIN
 */
public class GroupDBContext extends DBContext<Group>{
     public ArrayList<Group> list(){
         ArrayList<Group> group = new ArrayList<>();
         try {
             String sql = "SELECT gid,gname\n" +
                    "  FROM [Assignment].[dbo].[Group]";
             PreparedStatement stm = connection.prepareStatement(sql);
             ResultSet rs = stm.executeQuery();
             while(rs.next())
            {
                Group g = new Group();
                g.setGid(rs.getString("gid"));
                g.setGname(rs.getString("gname"));
                group.add(g);
            }
         } catch (Exception e) {
         }
         return group;
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
