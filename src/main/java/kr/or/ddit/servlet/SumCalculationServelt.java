package kr.or.ddit.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class sumCalculationServelt
 */
@WebServlet("/sumCalculationServelt")
public class SumCalculationServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SumCalculationServelt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int a = Integer.parseInt(request.getParameter("startNum"));
		int b = Integer.parseInt(request.getParameter("EndNum"));
		int sum = 0;
		
		System.out.println("합계 : "+ (a + b));
		
		for(a = a+1; a<b ; a++){
			sum += a;
		}
//		System.out.println("사이값 : " + (sum));
//		System.out.println("곱 :" + (a*b));
		
		//request.getParameter 사용자가 보낸 파라미터를 받아오는 작업
		//request 객체에 시적으로 값을 저장하는 방법
		request.setAttribute("sumResult", sum);
		
		//session에 sumResult를 저장한다.
		HttpSession session = request.getSession();
		session.setAttribute("sumResult", sum);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/sumResult.jsp");
		rd.forward(request, response);
		
		
		
		
	}

}
