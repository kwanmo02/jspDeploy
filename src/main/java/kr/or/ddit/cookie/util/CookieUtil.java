package kr.or.ddit.cookie.util;

public class CookieUtil {
	
	/**
	 * 
	* Method : getCookie
	* 최초작성일 : 2018. 7. 6.
	* 작성자 : PC21
	* 변경이력 :
	* @param cookie
	* @param name
	* @return
	* Method 설명 : 쿠키 조회
	 */
	public String getCookie(String cookie, String name) {
		// cookie : "userId=black; rememberMe=y"; checkYn=n

		String[] cookies = cookie.split("; ");
		String cookieResult = "";

		// cookieStr : userId=black, rememberMe=y, checYn=n
		for (String cookieStr : cookies) {
			String[] cookieNameValue = cookieStr.split("=");

			String cookieName = cookieNameValue[0];
			String cookievalue = cookieNameValue[1];

			if (name.equals(cookieName)) {
				cookieResult = cookievalue;
				break;
			}

		}
		return cookieResult;
	}

}
