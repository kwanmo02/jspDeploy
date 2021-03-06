package kr.or.ddit.jstl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.student.model.StudentVo;

/**
 * Servlet implementation class JstlServlet
 */
@WebServlet("/jstlCoreServlet")
public class JstlCoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//작업순서
		//client -> servlet 요청 전송 --> 로직 호출(service) , 결과물 기본영역에 저장 (reqeust, session)
		//view로 화면 작성을 위임(forward)
		
		//사용자 : 웹브라우저에 주소를 입력 localhost:8280/jstlServlet
		
		request.setAttribute("userId", "black");
		request.setAttribute("studentVo", new StudentVo());
		
		//view로 위임
		request.getRequestDispatcher("/jsp/jstl/core.jsp").forward(request, response);
		

	}


}
