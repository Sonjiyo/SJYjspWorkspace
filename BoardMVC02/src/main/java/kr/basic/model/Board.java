package kr.basic.model;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class Board {
	private int num;
	private String user;
	private String date;
	private String title;
	private String content;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
	public String getUser() {
		return user;
	}
	public String getDate() {
		return date;
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
	public Board(int num, String user, String title, String content) {
		super();
		this.num = num;
		this.user = user;
		LocalDate now = LocalDate.now();
		DateTimeFormatter fomat = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String inputDate = now.format(fomat);
		this.date = inputDate;
		this.title = title;
		this.content = content;
	}
}