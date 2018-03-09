package com.accp.service;

import java.util.List;

import com.accp.pojo.Projectinfo;
import com.accp.tools.PageSupport;

public interface ProjectinfoService {
	/**
	 * 根据状态获取总行数
	 * 
	 * @param status
	 *            状态
	 * @return
	 */
	public int getProjectinfoCount(int status) throws Exception;

	/**
	 * 根据状态获取分页信息
	 * 
	 * @param status
	 * @param pageSupport
	 * @return
	 */
	public List<Projectinfo> getProjectinfoByStatus(int status,
			PageSupport pageSupport)throws Exception;
}
