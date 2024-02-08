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
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String saveDirectory = request.getServletContext().getRealPath("/Uploads");

		Path saveDirPath = Paths.get(saveDirectory);
		if (!Files.isDirectory(saveDirPath)) {
			Files.createDirectories(saveDirPath);
		}
		System.out.println("saveDirectory = " + saveDirectory);

		//cos.jar 파일 안에 있는 내용
		MultipartRequest multi = new MultipartRequest(request, saveDirPath.toString(), 5 * 1024 * 1024, "UTF-8",
				new DefaultFileRenamePolicy()); //파일 이름이 서버 이미지 폴더 안에 중복이 되면 중복된 파일이름에 +1을 한다 => 파일 이름 중복 처리

		String sFileName = null;
		String oFileName = null;
		if (multi.getFilesystemName("uploadFile") != null) {
			sFileName = multi.getFilesystemName("uploadFile");// 실제 서버에 올라간 파일이름

			oFileName = multi.getOriginalFileName("uploadFile"); // 우리가 업로드한 파일이름
			String fileType = multi.getContentType("uploadFile"); // 파일의 타입 .txt , jpg , .png
			System.out.println("fileType= " + fileType);

		}
		response.setContentType("text/html; charset=utf-8");
		int num = Integer.parseInt(multi.getParameter("num"));

		int cnt = MemberDAO.getInstance().memberUploadPhoto(num, oFileName, sFileName);
		if (cnt > 0) {
			response.getWriter().print(sFileName);
		} else {
			response.getWriter().print("fail");
		}
		return null;
	}

}
