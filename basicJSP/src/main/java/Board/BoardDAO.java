package Board;

import java.util.ArrayList;

public class BoardDAO {
	private ArrayList<Board> boardList;
	
	public BoardDAO(){
		boardList = new ArrayList<Board>();
		init();
	}
	public int getNum() {
		return Board.getNum();
	}
	private void init() {
		for(int i =0; i<3; i++) {
			boardList.add(new Board("작성자"+(i+1), "제목"+(i+1), "내용"+(i+1) ));			
		}
	}
	public int getBoardListSize() {
		return boardList.size();
	}
	public int getContentNum(int idx) {
		return boardList.get(idx).getContentNum();
	}
	public String getUser(int idx) {
		return boardList.get(idx).getUser();
	}
	public String getDate(int idx) {
		return boardList.get(idx).getDate();
	}
	public String getTitle(int idx) {
		return boardList.get(idx).getTitle();
	}
	public void setTitle(int idx, String title) {
		boardList.get(idx).setTitle(title);
	}
	public String getContent(int idx) {
		return boardList.get(idx).getContent();
	}
	public void setContent(int idx, String content) {
		boardList.get(idx).setContent(content);
	}
	
	public void addBoardList() {
		int start = Board.getNum();
		for(int i =start; i<start+10; i++) {
			boardList.add(new Board("작성자"+(i+1), "제목"+(i+1), "내용"+(i+1) ));			
		}
	}
	public void addBoardList(String user, String title, String content) {
		boardList.add(new Board(user, title, content));
	}
	
	public void removeAllBoardList() {
		Board.setNum(0);
		boardList.clear();
	}
	
	public void removeBoardList(int idx) {
		boardList.remove(idx);
	}
}
