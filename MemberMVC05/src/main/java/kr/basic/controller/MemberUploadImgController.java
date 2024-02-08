package kr.basic.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.basic.model.MemberDAO;

public class MemberUploadImgController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String saveDirectory = req.getServletContext().getRealPath("/Uploads");
		
		Path saveDirPath = Paths.get(saveDirectory);
		if(!Files.isDirectory(saveDirPath)) { //폴더가 없다면 폴더 생성
			Files.createDirectories(saveDirPath);
		}
		
		MultipartRequest multi = new MultipartRequest(req, saveDirPath.toString(), 5 * 1024 *1024, "UTF-8",
				new DefaultFileRenamePolicy());
		
		String sFileName = null;
		String oFileName = null;
		
		//input type file이 있으면 request말고 multi로 getParameter
		if(multi.getFilesystemName("uploadFile")!=null) {
			sFileName = multi.getFilesystemName("uploadFile"); //실제 서버에 올라간 파일이름
			
			oFileName = multi.getOriginalFileName("uploadFile"); //업로드한 파일 이름
			String fileType = multi.getContentType("uploadFile"); //파일의 타입 .txt, .png 등..
		}
		
		resp.setContentType("text/html; charset=utf-8"); //이름이 깨지지 않게 UTF-8로 설정
		int num = Integer.parseInt(multi.getParameter("num"));
		
		MemberDAO.getInstance().memberUploadPhoto(num, oFileName, sFileName);
		
		return null;
	}

}
