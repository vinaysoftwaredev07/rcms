/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author hp
 */
public class Register {
    
    String usert;
    String userid;
    String name;
    String pass;
    String cnfpass;
    String gender;
    String mob;
    String date;
    String ap_num;

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getMob() {
        return mob;
    }

    public void setMob(String mob) {
        this.mob = mob;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    
	public String getUsert() {
		return usert;
	}
	public void setUsert(String usert) {
		this.usert = usert;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getCnfpass() {
		return cnfpass;
	}
	public void setCnfpass(String cnfpass) {
		this.cnfpass = cnfpass;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getAp_num() {
		return ap_num;
	}
	public void setAp_num(String ap_num) {
		this.ap_num = ap_num;
	}
    
}
