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
public class Information {

    String studentnumber;
    String name;
    String rollnumber;
    String classname;
    String email;
    int phone;
    String address;
    int count;
    String date;
    String specialized;
    String images;

    public Information(String studentnumber, String name, String rollnumber, String classname, String specialized, String date, String email, int phone, String address, String images) {
        this.studentnumber = studentnumber;
        this.name = name;
        this.rollnumber = rollnumber;
        this.classname = classname;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.date = date;
        this.specialized = specialized;
        this.images= images;
    }

    public Information(int count, String studentnumber, String name, String rollnumber, String email, String images) {
        this.count = count;
        this.studentnumber = studentnumber;
        this.name = name;
        this.rollnumber = rollnumber;
        this.email=email;
        this.images= images;
    }

    public String getStudentnumber() {
        return studentnumber;
    }

    public void setStudentnumber(String studentnumber) {
        this.studentnumber = studentnumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRollnumber() {
        return rollnumber;
    }

    public void setRollnumber(String rollnumber) {
        this.rollnumber = rollnumber;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getDate() {
        return date;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getSpecialized() {
        return specialized;
    }

    public void setSpecialized(String specialized) {
        this.specialized = specialized;
    }

}
