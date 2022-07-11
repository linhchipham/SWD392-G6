/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author PC
 */
public class semester {
    int semesterid;
    String semesternmae;

    public semester(int semesterid, String semesternmae) {
        this.semesterid = semesterid;
        this.semesternmae = semesternmae;
    }

    public int getSemesterid() {
        return semesterid;
    }

    public void setSemesterid(int semesterid) {
        this.semesterid = semesterid;
    }

    public String getSemesternmae() {
        return semesternmae;
    }

    public void setSemesternmae(String semesternmae) {
        this.semesternmae = semesternmae;
    }
    
}
