package kr.or.ddit.student.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.student.model.StudentVo;
import kr.or.ddit.student.service.StudentService;
import kr.or.ddit.student.service.StudentServiceInf;

/**
 * Servlet implementation class StudentServlet
 */
//main에서 학생 클릭시 이쪽으로 넘어옴
@WebServlet("/studentList")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//page, pageSize 파라미터
		/*****************여기서부터*************************/
		//parameter, attribute
		
		String pageStr = request.getParameter("page");
		String pageSizeStr = request.getParameter("pageSize");
		
		int page = pageStr == null ? 1 : Integer.parseInt(pageStr);
		int pageSize = pageSizeStr == null? 1: Integer.parseInt(pageSizeStr);

		
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("page", page);
		map.put("pageSize", pageSize);
		
		//학생 페이지 리스트, 전체 건수조회
		StudentServiceInf studentService = new StudentService();
		
		Map<String, Object> resultMap = studentService.getStudentPageList(map);
		
		//학생 전체 리스트
		List<StudentVo> studentList = (List<StudentVo>)resultMap.get("pageList"); 
		
		//학생 전체 건수
		int listSize = (int)resultMap.get("totCnt");
		int pagenationSize = listSize%pageSize==0?listSize/pageSize:listSize/pageSize+1;
		
		
		//페이지 네비게이션 문자열
		//뷰로 전달할때 사용되어 진다.(qasetAttribute)
		String pageNavi = (String)resultMap.get("pageNavi");
		request.setAttribute("pageNavi", pageNavi);
		request.setAttribute("studentList", studentList);
		request.setAttribute("paginationSize", pagenationSize);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/student/student2.jsp");
		rd.forward(request, response);
		
		request.setAttribute("studentList", studentService.selectAllStudents()); 
		
		
		 
		
		
		//StudentService 객체를 생성, 학생 전체 리스트를 조회
		//학생 전체 리스트 request객체에 속성으로 설정
		//studentList.jsp로 forward
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
