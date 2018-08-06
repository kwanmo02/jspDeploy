package kr.or.ddit.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.org.apache.xalan.internal.xsltc.compiler.sym;

import kr.or.ddit.user.model.UserVo;
import kr.or.ddit.user.service.UserService;
import kr.or.ddit.user.service.UserServiceInf;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		System.out.println(request.getMethod());
		
		response.setContentType("text/html; charset=utf-8"); 
				
		String userId = request.getParameter("userId");
		String password =request.getParameter("password");
		
		//파라미터를 받아서 sysout으로 console창에 출력
		System.out.println("userId : " + request.getParameter("userId"));
		System.out.println("password: " + request.getParameter("password"));
		
		//로그인 프로세스
		//가짜(fake) service, dao객체를 생성
		UserServiceInf userService = new UserService();
		UserVo userVo = userService.getUser(userId);
		
		//userService에서 받아온 userVo의 정보와 사용자가 입력한 정보가 동일할 경우
		//로그인성공 메세지를 화면에 출력
		//정보가 틀릴경우 로그인 실패 메세지를 화면에 출력
		PrintWriter pw = response.getWriter();
		
		//로그인 성공시 : forward/main.jsp : [main.jsp]
		//로그인 실패시 : redirect/ relogin.jsp
		
		
		// 로그인 성공시 uesrVO  객체를 저장하여 (적당한 영역에)
		// main.jsp에서 사용자 아이디를 화면에 출력
		// 단 새로운 탭에서 main.jsp를 직접 접속해도 사용자 아이디가 화면에 나와야 한다.
		
		
		if(userVo.validateUser(userId, password)) {
			
			userVo.setUserId(userId);
			userVo.setPassworld(password);
			
			HttpSession sess = request.getSession();
			sess.setAttribute("userVo", userVo);
			
			request.getRequestDispatcher("/jsp/main.jsp").forward(request, response);
			pw.write("로그인 성공");
			
		}else{
			//response.sendRedirect("/login/login.jsp");
			request.getRequestDispatcher("/login/login.jsp").forward(request, response);
			
		}
	}
}
















