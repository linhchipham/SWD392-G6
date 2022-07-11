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
import model.mark;
import model.semester;
import model.subject;

/**
 *
 * @author PC
 */
public class markDAO {

    Connection conn;
    PreparedStatement pr;
    ResultSet rs;

    public ArrayList<semester> getallsemester() {
        try {
            ArrayList<semester> list = new ArrayList<>();
            String sql = " select * from Semester";
            conn = DBcontext.getConnection();
            pr = conn.prepareStatement(sql);
            rs = pr.executeQuery();
            while (rs.next()) {
                semester s = new semester(rs.getInt(1), rs.getString(2));
                list.add(s);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(markDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<subject> getallsubject(int semid, String specid) {
        try {
            ArrayList<subject> list = new ArrayList<>();
            String sql = "select SubjectID, SubjectName , SpecializedName, SemesterID "
                    + "from Subjectstudy join Specialized on Subjectstudy.SpecializedID= Specialized.SpecializedID "
                    + "where SemesterID= ? and SpecializedName=?";
            conn = DBcontext.getConnection();
            pr = conn.prepareStatement(sql);
            pr.setInt(1, semid);
            pr.setString(2, specid);
            rs = pr.executeQuery();
            while (rs.next()) {
                subject s = new subject(rs.getInt("SubjectID"), rs.getString("SubjectName"), rs.getInt("SemesterID"));
                list.add(s);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(markDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public mark getmarkbysn(int subid, String studentnum) {
        try {
            String sql = "select * from MAS where  SubjectID= ? and studentNumber= ?";
            double total1 = 0, total2 = 0, total = 0;
            conn = DBcontext.getConnection();
            pr = conn.prepareStatement(sql);
            pr.setInt(1, subid);
            pr.setString(2, studentnum);
            rs = pr.executeQuery();
//               total1 = (rs.getFloat("Assignment1")+ rs.getFloat("Assignment2"))/2;
//               total2= (rs.getFloat("ProgressTest1")+ rs.getFloat("ProgressTest2"))/2;
//               total = (total1 * 30 + total2* 30 + rs.getFloat("FinalExam ")*40)/100;
            while (rs.next()) {
                total1 = (rs.getDouble("Assignment1") * 15 + rs.getDouble("Assignment2") * 15) / 30;
                total2 = (rs.getDouble("ProgressTest1") * 15 + rs.getDouble("ProgressTest2") * 15) / 30;
                total = (total1 * 30 + total2 * 30 + rs.getDouble("FinalExam") * 40) / 100;

                mark m = new mark(rs.getDouble("Assignment1"), rs.getDouble("Assignment2"), total1, rs.getDouble("ProgressTest1"), rs.getDouble("ProgressTest2"), total2, rs.getDouble("FinalExam"), total);
                return m;
            }

        } catch (SQLException ex) {
            Logger.getLogger(markDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
