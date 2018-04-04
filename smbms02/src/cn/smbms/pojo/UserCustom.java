package cn.smbms.pojo;

import java.util.Date;

/**
 * 用户扩展类
 * @author MDS
 *
 */
public class UserCustom extends User{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String userRoleName;
	
	public String getUserRoleName() {
		return userRoleName;
	}
	public void setUserRoleName(String userRoleName) {
		this.userRoleName = userRoleName;
	}
	public int getAge() {
		long time = new Date().getTime()-super.getBirthday().getTime();
		return (int)(time/31536000000L);
	}
}
