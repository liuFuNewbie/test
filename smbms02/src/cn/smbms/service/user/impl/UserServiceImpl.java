package cn.smbms.service.user.impl;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.smbms.dao.user.UserMapperCustom;
import cn.smbms.pojo.User;
import cn.smbms.service.user.UserService;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapperCustom userMapperCustom;
	@Override
	public User getLoginUser(String userCode, String userPassword)
			throws SQLException {
		User user = userMapperCustom.getLoginUser(userCode);
		if(user != null){
			if(!user.getUserPassword().equals(userPassword)){
				return null;
			}
		}
		return user;
	}

}
