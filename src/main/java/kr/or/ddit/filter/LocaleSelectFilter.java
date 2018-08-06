package kr.or.ddit.filter;

import java.io.IOException;

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
 * Servlet Filter implementation class LocaleSelectFilter
 */
@WebFilter("/localeSelectServletttt")
public class LocaleSelectFilter implements Filter {
	private Logger logger = LoggerFactory.getLogger(LocaleSelectFilter.class);
	
	
    public LocaleSelectFilter() {

    }

	
	public void destroy() {
		
	}

	
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		//전처리
		HttpServletRequest req = (HttpServletRequest)request;
		logger.debug(req.getRequestURL() + ": LocaleSelectFilter do Filter");
		
		LocaleSelectWrapper localeSelectWrapper = new LocaleSelectWrapper(req);

		
		//doFilter해주지 않으면 넘어가지 않는다.
		chain.doFilter(localeSelectWrapper, response);
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
