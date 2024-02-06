package kr.basic.model;

import java.sql.Date;
import java.text.SimpleDateFormat;
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
	public Board(int num, String user,Date date, String title, String content) {
		super();
		this.num = num;
		this.user = user;
		SimpleDateFormat fomat = new SimpleDateFormat("yyyy-MM-dd");
		this.date = fomat.format(date);
		this.title = title;
		this.content = content;
	}
}