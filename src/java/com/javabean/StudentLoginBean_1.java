/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javabean;

/**
 *
 * @author nainc
 */
public class StudentLoginBean_1 {

    private int roll;
    private String enroll;
    private String name;
    private String password;
    private int college;
    private String branch;
    private int year;
    private int allot_pid;

    public StudentLoginBean_1() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCollege() {
        return college ;
    }

    public void setCollege(int college) {
        this.college = college;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getRoll() {
        return roll;
    }

    public void setRoll(int roll) {
        this.roll = roll;

    }

    public String getEnroll() {
        return enroll;
    }

    public void setEnroll(String enroll) {
        this.enroll = enroll;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public void setAllot_pid(int allot_pid) {
        this.allot_pid = allot_pid;
    }

    public int getAllot_pid() {
        return allot_pid;
    }
    

}
