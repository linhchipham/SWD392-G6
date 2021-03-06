/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Role;
import model.User;

/**
 *
 * @author PC
 */
public class userDAO {

    Connection conn;
    PreparedStatement pr;
    ResultSet rs;

    public User login(String email, String pass) {
        try {
            String sql = "select email, pass,[Role].r_id,[Role].r_name from Account JOIN [Role] on [Role].[r_id] = Account.[r_id]\n" +
                    "where email=? and pass = ? ";
            conn = DBcontext.getConnection();
            pr = conn.prepareStatement(sql);
            pr.setString(1, email);
            pr.setString(2, pass);
            rs = pr.executeQuery();
            if (rs.next()) {
                User a = new User(rs.getString("email"), rs.getString("pass"), new Role(rs.getInt("r_id"),rs.getString("r_name")));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(userDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
