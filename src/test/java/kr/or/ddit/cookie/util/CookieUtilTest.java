package kr.or.ddit.cookie.util;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class CookieUtilTest {
	private String cookie;
	
	@Before
	public void setup(){
		cookie = "userId=brown; rememberMe=y; checkYn=n";
	}
	
	
	@Test
	public void cookieSplitTest(){
		/***Given***/
		String[] cookies = cookie.split("; ");

		/***When***/
		
		
		/***Then***/
		assertEquals(3, cookies.length);
		assertEquals("userId=brown", cookies[0]);
		assertEquals("rememberMe=y", cookies[1]);
		assertEquals("checkYn=n", cookies[2]);
		
	}
	
	@Test
	public void cookieNameValueSplitTest(){
		//gwt
		/***Given***/
		String cookie = "userId=black";

		/***When***/
		//cookieArr[0] = userId
		//cookieArr[1] = brown
		String[] cookieArray = cookie.split("=");
		/***Then***/
		assertEquals("userId", cookieArray[0]);
		assertEquals("black", cookieArray[1]);
		
	}
	
	
	
	@Test
	public void getCookieTest() {
		/***Given***/
		String cookie = "userId=black; rememberMe=y";
		CookieUtil cookieUtil = new CookieUtil();

		/***When***/
		//userId --> black
		String cookieValue = cookieUtil.getCookie(cookie, "userId");
		String cookieValue2 = cookieUtil.getCookie(cookie, "rememberMe");
		
		/***Then***/
		assertEquals("black", cookieValue);
		assertEquals("y", cookieValue);
		
	}

}
