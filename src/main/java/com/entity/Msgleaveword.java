package com.entity;

import com.util.VeDate;

public class Msgleaveword {
	private String msgleavewordid = "MSGLVWD"+VeDate.getStringId();
	private String leaveword;
	private String userid;
	private String username;
	private String messageid;
	private String msgleavewordtime;

	public String getMsgleavewordid() {
		return msgleavewordid;
	}

	public void setMsgleavewordid(String msgleavewordid) {
		this.msgleavewordid = msgleavewordid;
	}

	public String getLeaveword() {
		return leaveword;
	}

	public void setLeaveword(String leaveword) {
		this.leaveword = leaveword;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getMessageid() {
		return messageid;
	}

	public void setMessageid(String messageid) {
		this.messageid = messageid;
	}

	public String getMsgleavewordtime() {
		return msgleavewordtime;
	}

	public void setMsgleavewordtime(String msgleavewordtime) {
		this.msgleavewordtime = msgleavewordtime;
	}

	@Override
	public String toString() {
		return "Msgleaveword{" +
				"msgleavewordid='" + msgleavewordid + '\'' +
				", leaveword='" + leaveword + '\'' +
				", userid='" + userid + '\'' +
				", username='" + username + '\'' +
				", messageid='" + messageid + '\'' +
				", msgleavewordtime='" + msgleavewordtime + '\'' +
				'}';
	}
}
