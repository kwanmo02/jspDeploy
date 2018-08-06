package kr.or.ddit.filter;

import java.io.IOException;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Servlet Filter implementation class DefCompFiter
 */
//@WebFilter("/defCompServlet")
public class DefCompFiter implements Filter {

	private Logger logger = LoggerFactory.getLogger(DefCompFiter.class);

	//생성자
	public DefCompFiter() {
		
    }

	//destroy (종료시 호출)
	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		//전처리
		HttpServletRequest req = (HttpServletRequest)request;
		logger.debug(req.getRequestURI() + " : DefCompFilter do Filter");
		
		
		DefCompWrapper defCompWrapper = new DefCompWrapper(req);
		defCompWrapper.getParameter("name");
		
		
		
	/*	//lock 이 걸려있는 map 객체라 임의 등록이 불가능 하다 -->wrapper를 통해 해결
		Map<String, String[]> requestMap =  req.getParameterMap();
		requestMap.put("defComp", new String[] {"valueByFilter"});
		*/
		
		
		
		//filter / servlet 요청처리
		chain.doFilter(defCompWrapper, response);
		
		//후처리
		
		
	}
	
	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
