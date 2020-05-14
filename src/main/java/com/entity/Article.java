package com.entity;

import com.util.VeDate;

public class Article {
	private String articleid = "ATC"+VeDate.getStringId();
	private String title;
	private String content;
	private String userid;
	private User user;//文章作者

	public String getArticleid() {
		return articleid;
	}

	public void setArticleid(String articleid) {
		this.articleid = articleid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	@Override
	public String toString() {
		return "Article{" +
				"articleid='" + articleid + '\'' +
				", title='" + title + '\'' +
				", content='" + content + '\'' +
				", userid='" + userid + '\'' +
				", user=" + user +
				'}';
	}
}
