package Board;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class Board {
	static private int num;
	private int contentNum;
	private String user;
	private String date;
	private String title;
	private String content;
	
	public static int getNum() {
		return num;
	}
	public static void setNum(int num) {
		Board.num = num;
	}
	public int getContentNum() {
		return contentNum;
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
	public Board(String user, String title, String content) {
		super();
		this.contentNum = ++num;
		this.user = user;
		LocalDate now = LocalDate.now();
		DateTimeFormatter fomat = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String inputDate = now.format(fomat);
		this.date = inputDate;
		this.title = title;
		this.content = content;
	}
}
