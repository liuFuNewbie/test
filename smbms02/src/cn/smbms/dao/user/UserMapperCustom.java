package cn.smbms.dao.user;

import org.apache.ibatis.annotations.Param;

import cn.smbms.pojo.User;

/**
 * 用户扩展接口
 * @author MDS
 *
 */
public interface UserMapperCustom {
	/**
	 * 按用户名查询用户信息
	 * @param userCode
	 * @return
	 */
	public User getLoginUser(@Param("userCode")String userCode);
	
}
