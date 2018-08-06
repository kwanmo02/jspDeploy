package kr.or.ddit.user.model;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class UserVo implements HttpSessionBindingListener{
	
	private Logger logger = LoggerFactory.getLogger(UserVo.class);
	
	private String userId;
	private String passworld;
	private String userNm;
	
	public UserVo(){
		
	}
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassworld() {
		return passworld;
	}
	public void setPassworld(String passworld) {
		this.passworld = passworld;
	}
	public String getUserNm() {
		return userNm;
	}
	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}
	
	
	
	public boolean validateUser(String userId, String password){
		if(this.getUserId().equals(userId) && this.getPassworld().equals(password))
			return true;
		else
			return false;
	}
	
	
	@Override
	public String toString() {
		return "UserVo [userId=" + userId + ", passworld=" + passworld
				+ ", userNm=" + userNm + "]";
	}


	@Override
	public void valueBound(HttpSessionBindingEvent event) {
		//session 객체에서 session.setAttribute("userVo", userVo)가 호출 되었을 때
		logger.debug("httpSessionBinding valueBound :  " + event.getName());
	}


	@Override
	public void valueUnbound(HttpSessionBindingEvent event) {
		//session 객체에서 session.setRemove("userVo")가 호출 되었을 때
		logger.debug("httpSessionUnBinding valueUnBound :  " + event.getName());
	}
	
	
	
}
