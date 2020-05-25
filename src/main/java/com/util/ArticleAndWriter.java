package com.util;

public class ArticleAndWriter {
	private String title;
	private String content;
	private String articleid;
	private String writer;

	public ArticleAndWriter(String title, String content, String articleid, String writer) {
		this.title = title;
		this.content = content;
		this.articleid = articleid;
		this.writer = writer;
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

	public String getArticleid() {
		return articleid;
	}

	public void setArticleid(String articleid) {
		this.articleid = articleid;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	@Override
	public String toString() {
		return "ArticleAndWriter{" +
				"title='" + title + '\'' +
				", content='" + content + '\'' +
				", articleid='" + articleid + '\'' +
				", writer='" + writer + '\'' +
				'}';
	}
}
