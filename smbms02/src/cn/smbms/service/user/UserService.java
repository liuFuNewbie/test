package cn.smbms.service.user;

import java.sql.SQLException;

import cn.smbms.pojo.User;

public interface UserService {
	/**
	 * 用户登录
	 * 
	 * @param userCode
	 * @return
	 */
	public User getLoginUser(String userCode, String userPassword)
			throws SQLException;
}
