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

/**
 *
 * @author LOVE
 */
public class roleDAO {
    
    Connection conn;
    PreparedStatement pr;
    ResultSet rs;
    public Role getRoleById(int id) {
        try {
            String sql = "select r_id,r_name from [Role] where r_id = ? ";
            pr.setInt(1, id);
            conn = DBcontext.getConnection();
            pr = conn.prepareStatement(sql);
            rs = pr.executeQuery();
            if (rs.next()) {
                Role r = new Role();
                r.setId(rs.getInt("r_id"));
                r.setRoleName(rs.getString("r_name"));
                return r;
            }
        } catch (SQLException ex) {
            Logger.getLogger(roleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
