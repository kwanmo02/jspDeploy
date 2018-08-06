package kr.or.ddit.jstl;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.student.model.StudentVo;
import kr.or.ddit.student.service.StudentService;
import kr.or.ddit.student.service.StudentServiceInf;

/**
 * Servlet implementation class jstlForeachServlet
 */
@WebServlet("/jstlForeachServlet")
public class jstlForeachServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		StudentServiceInf studentService = new StudentService();
		
		List<StudentVo> studentList = studentService.selectAllStudents();
		
		request.setAttribute("studentList", studentList);
		
		//foreach를 이용한 map 데이터 조회
		Map<String, String> map = new HashMap<String, String>();
		map.put("name", "black");
		map.put("alias", "돼지");
		map.put("id", "5");
		
		request.setAttribute("map", map);
		
		//forTokens를 이용한 데이터 조회
		request.setAttribute("lineRangers", "brown,cony,sally,abba, samson");
		
		
		
		
		request.getRequestDispatcher("/jsp/jstl/foreach.jsp").forward(request, response);
		
		
		
		//1.studentService.selectAllstudent();
		//2.request 객체에 list 데이터만 저장
		//3.foreach.jsp로 forward
		
		
	}

}
