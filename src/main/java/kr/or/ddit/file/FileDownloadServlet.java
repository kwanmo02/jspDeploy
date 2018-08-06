package kr.or.ddit.file;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.student.model.StudentVo;
import ch.qos.logback.core.util.FileUtil;

/**
 * Servlet implementation class fileDownloadServlet
 */
@WebServlet("/fileDownload")
public class FileDownloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader("Content-Disposition", "attachment; filename=\"cony.png\"");
		response.setContentType("application/octet-stream");
		
		//FileUtil.fileUploadPath : cony.png
		//파라미터로 파일명이 제공된다고 가정
		//localhost:8280/fileDownload?fileName=cony.png
		String fileName = request.getParameter("fileName");
		StudentVo studentVo = new StudentVo();
		
		//String file = FileUtill.fileUploadPath + File.separator + fileName;
		String file = FileUtill.fileUploadPath + File.separator + studentVo.getName();
		
		//file 입출력을 위한 준비
		ServletOutputStream sos =  response.getOutputStream();
		
		File f = new File(file);
		FileInputStream fis = new FileInputStream(f);
		byte[] b = new byte[512];
		int len = 0;
		while((len = fis.read(b)) != -1){
			sos.write(b, 0, len);
		}
		
		sos.close();
		fis.close();
		
		
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
