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
import model.Information;

/**
 *
 * @author PC
 */
public class informationDAO {

    Connection conn;
    PreparedStatement pr;
    ResultSet rs;

    public Information getstudentbyemail(String email) {
        try {
            String sql = "select StudentNumber, Name,Rollnumber, ClassName, SpecializedName, birthdate,Email,Phone,Address,images from Information join Class on Information.ClassID= Class.ClassID join Specialized on Information.SpecializedID= Specialized.SpecializedID where Email=?";
            conn = DBcontext.getConnection();
            pr = conn.prepareStatement(sql);
            pr.setString(1, email);
            rs = pr.executeQuery();
            while (rs.next()) {
                Information a = new Information(rs.getString("StudentNumber"), rs.getString("Name"), rs.getString("RollNumber"), rs.getString("ClassName"), rs.getString("SpecializedName"), rs.getString("birthdate"), rs.getString("Email"), rs.getInt("Phone"), rs.getString("Address"), rs.getString("images"));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(informationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Information> getstudentbyclass(String classname) {
        try {
            ArrayList<Information> list = new ArrayList<>();
            int count = 1;
            String sql = "select StudentNumber, Name,Rollnumber, ClassName, SpecializedName, birthdate,Email,Phone,Address,images from Information join Class on Information.ClassID= Class.ClassID join Specialized on Information.SpecializedID= Specialized.SpecializedID where ClassName=?";
            conn = DBcontext.getConnection();
            pr = conn.prepareStatement(sql);
            pr.setString(1, classname);
            rs = pr.executeQuery();
            while (rs.next()) {
                Information a = new Information(count, rs.getString("StudentNumber"), rs.getString("Name"), rs.getString("RollNumber"), rs.getString("Email"), rs.getString("images"));
                count++;
                list.add(a);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(informationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Information editinformation(String email, String bd, String phone, String address) {
        try {
            String sql = "update Information set birthdate= ?, Phone=?, [Address]=? where Email= ?";
            conn = DBcontext.getConnection();
            pr = conn.prepareStatement(sql);
            pr.setString(1, bd);
            pr.setString(2, phone);
            pr.setString(3, address);
            pr.setString(4, email);
            pr.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(informationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
   
}
