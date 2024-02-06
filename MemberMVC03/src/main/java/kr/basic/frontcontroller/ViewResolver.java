package kr.basic.frontcontroller;
//경로를 텍스트 형식으로 저장하기 위함
public class ViewResolver {
	public static String makeView(String nextPage) {
		return "/WEB-INF/member/"+nextPage+".jsp";
	}
}
