/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author ADMIN
 */
public class LoginDBContext extends DBContext {
   public  Account Login(String username , String pass){

        try {
            //Cau lenh trong SQL
            String sql = "SELECT username ,pass FROM Account where username =? and pass = ?";
            //Mo ket noi den SQL
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, pass);
            //Thuc hien cau lenh 
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Account account = new Account();
                account.setUsername(rs.getString("username"));
                account.setPass(rs.getString("pass"));
                return account;
            }
        } catch (Exception ex) {
             Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
            
        }
        
        return null;
    }
   
   public static void main(String[] args)
    {
        LoginDBContext db = new LoginDBContext();
    }
}