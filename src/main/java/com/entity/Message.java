package com.entity;

public class Message {
	private String messageid;
	private String message;
	private String userid;
	private String username;
	private String messagetime;

	public String getMessageid() {
		return messageid;
	}

	public void setMessageid(String messageid) {
		this.messageid = messageid;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
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

	public String getMessagetime() {
		return messagetime;
	}

	public void setMessagetime(String messagetime) {
		this.messagetime = messagetime;
	}

	@Override
	public String toString() {
		return "Message{" +
				"messageid='" + messageid + '\'' +
				", message='" + message + '\'' +
				", userid='" + userid + '\'' +
				", username='" + username + '\'' +
				", messagetime='" + messagetime + '\'' +
				'}';
	}
}
