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
public class subject {
    int subjectid;
    String subjectname;
    int semesid;

    public subject(int subjectid, String subjectname, int semesid) {
        this.subjectid = subjectid;
        this.subjectname = subjectname;
        this.semesid= semesid;
    }

    public int getSubjectid() {
        return subjectid;
    }

    public void setSubjectid(int subjectid) {
        this.subjectid = subjectid;
    }

    public String getSubjectname() {
        return subjectname;
    }

    public void setSubjectname(String subjectname) {
        this.subjectname = subjectname;
    }

    public int getSemesid() {
        return semesid;
    }

    public void setSemesid(int semesid) {
        this.semesid = semesid;
    }
     
    
}
