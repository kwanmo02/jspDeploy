package kr.or.ddit.lprod.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.lprod.model.LprodVo;
import kr.or.ddit.lprod.service.LprodService;
import kr.or.ddit.lprod.service.LprodServiceInf;

/**
 * Servlet implementation class LprodServlet
 */
@WebServlet("/lprodList")
public class LprodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		LprodServiceInf lprodService = new LprodService();
		
		String pageStr = request.getParameter("page");
		String pageSizeStr = request.getParameter("pageSize");
		
		int page = pageStr == null? 1 : Integer.parseInt(pageStr);
		int pageSize = pageSizeStr==null? 1: Integer.parseInt(pageSizeStr);
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("page", page);
		map.put("pageSize", pageSize);
		
		//상품 페이지 리스트, 전체 건수 조회
		Map<String, Object> resultMap = lprodService.getLprodPageList(map);
		
		//상품 전체 리스트
		List<LprodVo> lprodList =  (List<LprodVo>)resultMap.get("pageList");
		
		//상품 전체 건수
		int listSize = (int)resultMap.get("totCnt");
		int pagenationSize = listSize%pageSize==0?listSize/pageSize:listSize/pageSize+1;
		
		//페이지 네비게이션 문자열
		String pageNavi = (String)resultMap.get("pageNavi");
		
		
		request.setAttribute("lprodPageList", lprodList);
		request.setAttribute("pageNavi", pageNavi);
		request.setAttribute("pagenationSize", pagenationSize);
		request.setAttribute("lprodList", lprodService.selectAllLprod());
		
		
		request.getRequestDispatcher("/lprod/lprod.jsp").forward(request, response);
	}


}
