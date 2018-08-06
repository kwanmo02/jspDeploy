package kr.or.ddit.user.board.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.user.board.model.BoardVo;
import kr.or.ddit.user.board.service.BoardService;
import kr.or.ddit.user.board.service.BoardServiceInf;

/**
 * Servlet implementation class BoardServlet
 */
@WebServlet(urlPatterns={"/boardList","/boardInsert"})
public class BoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//게시글 조회
		BoardServiceInf boardService = new BoardService();
		List<BoardVo> boardList = boardService.getBoardList();
		
		//게시글을 request객체에 저장
		request.setAttribute("boardList", boardList);
		
		//게시글 화면을 담당할 jsp로 역할을 위임(/board/boardList.jsp)
		//forward
		
		
		request.getRequestDispatcher("/board/boardList.jsp").forward(request, response);
		
		
		
		
		
	}
}
