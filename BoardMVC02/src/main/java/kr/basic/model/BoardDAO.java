package kr.basic.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardDAO {
	private BoardDAO() {}
	private static BoardDAO instance = new BoardDAO();
	
	public static BoardDAO getInstance() {
		return instance;
	}
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;

	private void getConnect() {
		String url = "jdbc:mysql://localhost:3306/board?useSSL=false&characterEncoding=UTF-8&serverTimezone=UTC";
		String user ="root";
		String password="1234";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,user,password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Board> getBoardList(){
		ArrayList<Board> list = new ArrayList<Board>();
		String sql = "select * from board";
		
		try {
			getConnect();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				int num = rs.getInt("num");
				String user = rs.getString("user");
				Date date = rs.getDate("date");
				String title = rs.getString("title");
				String content = rs.getString("content");
				
				Board b = new Board(num, user, date, title, content);
				list.add(b);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return list;
	}
	
	public Board findBoard(int num) {
		Board vo = null;
		ArrayList<Board> list =  getBoardList();
		for(Board b : list) {
			if(b.getNum()==num) {
				return b;
			}
		}
		
		return vo;
	}
	
	public void addDummyContent() {
		ArrayList<Board> list =  getBoardList();
		int num = 1;
		if(list.size()!=0) {
			num = list.get(list.size()-1).getNum()+1;			
		}
		for(int i =num; i<=num+9; i++) {
			String sql = "insert into board values(null,?,now(),?,?)";
			try {
				getConnect();
				ps = conn.prepareStatement(sql);
				ps.setString(1, "작성자"+i);
				ps.setString(2, "제목"+i);
				ps.setString(3, "내용"+i);
				ps.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				dbClose();
			}
		}
	}
	
	public void addOneContent(String user, String title, String content) {
		String sql = "insert into board values(null,?,now(),?,?)";
		try {
			getConnect();
			ps = conn.prepareStatement(sql);
			ps.setString(1, user);
			ps.setString(2, title);
			ps.setString(3, content);
			int row = ps.executeUpdate();
			System.out.println(row);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
	}
	
	public boolean deleteOneContent(int num) {
		String sql="delete from board where num = ?";
		try {
			getConnect();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, num);
			int cnt = ps.executeUpdate();
			
			return cnt>0;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return false;
	}
	
	public void deleteAllContent() {
		String sql="delete from board";
		try {
			getConnect();
			ps = conn.prepareStatement(sql);
			ps.execute();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		sql="ALTER TABLE board AUTO_INCREMENT = 1";
		try {
			getConnect();
			ps = conn.prepareStatement(sql);
			ps.execute();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
	}
	
	public boolean updateContent(int num, String title, String content) {
		String sql="update board set title=?, content=? where num=?";
		try {
			getConnect();
			ps = conn.prepareCall(sql);
			ps.setString(1, title);
			ps.setString(2, content);
			ps.setInt(3, num);
			
			int cnt = ps.executeUpdate();
			
			return cnt>0;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return false;
	}
	
	private void dbClose() {
		try { 
			if(rs!=null) rs.close();
			if(ps!=null) ps.close();
			if(conn!=null) conn.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}   
}
