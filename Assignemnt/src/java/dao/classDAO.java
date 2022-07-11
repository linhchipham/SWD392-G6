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
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Classinfo;

/**
 *
 * @author PC
 */
public class classDAO {

    Connection conn;
    PreparedStatement pr;
    ResultSet rs;

    public ArrayList<Classinfo> getallClass() {
        try {
            ArrayList<Classinfo> list = new ArrayList<>();
            String sql = "select * from Class";
            conn = DBcontext.getConnection();
            pr = conn.prepareStatement(sql);
            rs = pr.executeQuery();
            while (rs.next()) {
                Classinfo c = new Classinfo(rs.getInt("ClassID"), rs.getString("ClassName"));
                list.add(c);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(classDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
