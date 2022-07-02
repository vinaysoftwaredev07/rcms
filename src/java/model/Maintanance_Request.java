/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author sachin
 */
public class Maintanance_Request 
{
    
   private String rqst;
   private String userid;
   private String name;
   private String mob;
   private String ap_num;
   private String desc;

    public String getRqst() {
        return rqst;
    }

    public void setRqst(String rqst) {
        this.rqst = rqst;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMob() {
        return mob;
    }

    public void setMob(String mob) {
        this.mob = mob;
    }

    public String getAp_num() {
        return ap_num;
    }

    public void setAp_num(String ap_num) {
        this.ap_num = ap_num;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }
    
}
