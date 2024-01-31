package member;

import java.util.ArrayList;

public class MemberDAO {
	private ArrayList<Member> memberList;
	private int log;
	
	public MemberDAO(){
		memberList = new ArrayList<Member>();
		init();
	}

	private void init() {
		log = -1;
		memberList.add(new Member("admin", "admin", "관리자", "남성"));
		memberList.add(new Member("qwer", "1111", "이만수", "남성"));
		memberList.add(new Member("abcd", "2222", "박영희", "여성"));
		memberList.add(new Member("hello", "3333", "이수민", "여성"));
	}
	
	public void setLog(int log) {
		this.log = log;
	}
	
	public int getLog() {
		return log;
	}

	public boolean checkLogin(String id, String pw) {
		for(int i=0; i<memberList.size(); i++) {
			if(memberList.get(i).getId().equals(id) && 
					memberList.get(i).getPw().equals(pw)) {
				log=i;
				return true;
			}
		}
		return false;
	}
	
	public String getId(int log){
		return memberList.get(log).getId();
	}
	public String getPw(int log){
		return memberList.get(log).getPw();
	}
	public String getName(int log){
		return memberList.get(log).getName();
	}
	public String getGender(int log){
		return memberList.get(log).getGender();
	}
	public void setName(int log, String name){
		memberList.get(log).setName(name);
	}
	public void setGender(int log, String gender){
		memberList.get(log).setGender(gender);
	}
	
	public void removeList(int log) {
		memberList.remove(log);
	}
	
	public void addMemberList(String id, String pw, String name, String gender) {
		memberList.add(new Member(id, pw, name, gender));
	}
	
	public int getMemberSize() {
		return memberList.size();
	}
}
