package kr.or.ddit.listener;

import java.net.URI;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class RequestListener implements ServletRequestListener{
	
	Logger logger = LoggerFactory.getLogger(ServletRequestListener.class);

	@Override
	public void requestDestroyed(ServletRequestEvent sre) {
		HttpServletRequest req = (HttpServletRequest)sre.getServletRequest();
		logger.debug("request.getRequestURI detroyed  : "  + req.getRequestURI());
	}

	@Override
	public void requestInitialized(ServletRequestEvent sre) {
		HttpServletRequest req = (HttpServletRequest)sre.getServletRequest();
		logger.debug("req.getReqeustURI Initiallized: " + req.getRequestURI());
	}

}
