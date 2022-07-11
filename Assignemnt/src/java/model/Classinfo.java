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
public class Classinfo {
    int classid;
    String Classname;

    public Classinfo(int classid, String Classname) {
        this.classid = classid;
        this.Classname = Classname;
    }

    public int getClassid() {
        return classid;
    }

    public void setClassid(int classid) {
        this.classid = classid;
    }

    public String getClassname() {
        return Classname;
    }

    public void setClassname(String Classname) {
        this.Classname = Classname;
    }


    
}
