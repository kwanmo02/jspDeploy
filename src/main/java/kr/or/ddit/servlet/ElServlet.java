package kr.or.ddit.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.student.service.StudentService;
import kr.or.ddit.student.service.StudentServiceInf;

/**
 * Servlet implementation class ElServlet
 */
@WebServlet("/elServlet")		//소문자로 바꿔줫다
public class ElServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 각 영역에 임의의 값을 저장 --> jsp에서 el을 사용하여 해당 속성을 확인한다.
		
		// reqeust
		request.setAttribute("requestScop", "requestValue");
//		request.setAttribute("sameName", "reqeustName");
		
		//session
		HttpSession session = request.getSession();
		session.setAttribute("sessionScop", "sessionValue");
//		session.setAttribute("sameName", "sessionName");
		
		//application
		ServletContext servletContext = getServletContext();	//어플리 케이션 객체
		servletContext.setAttribute("applicationScop", "applicationValue");
		servletContext.setAttribute("sameName", "applicationName");
		
		
		//학생 전체 리스트
		StudentServiceInf studentService = new StudentService();
		request.setAttribute("studentList", studentService.selectAllStudents()); 
		
		
		
		
		//jsp로 위임(/jsp/el.jsp)
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/el.jsp");
		rd.forward(request, response);
		
	}
}
