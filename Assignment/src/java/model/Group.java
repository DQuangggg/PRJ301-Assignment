/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author ADMIN
 */
public class Group {
    private int gid;
    private String gname;
    private Date gcdate;
    private int gcslot;
    private Course course ;
   

    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public Date getGcdate() {
        return gcdate;
    }

    public void setGcdate(Date gcdate) {
        this.gcdate = gcdate;
    }

    public int getGcslot() {
        return gcslot;
    }

    public void setGcslot(int gcslot) {
        this.gcslot = gcslot;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    
    
    
}
