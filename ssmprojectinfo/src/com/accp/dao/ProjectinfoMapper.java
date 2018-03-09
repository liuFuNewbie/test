package com.accp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.accp.pojo.Projectinfo;
import com.accp.tools.PageSupport;

public interface ProjectinfoMapper {
	/**
	 * 根据状态获取总行数
	 * 
	 * @param status
	 *            状态
	 * @return
	 */
	public int getProjectinfoCount(@Param("status") int status);

	/**
	 * 根据状态获取分页信息
	 * @param status
	 * @param pageSupport
	 * @return
	 */
	public List<Projectinfo> getProjectinfoByStatus(
			@Param("status") int status,
			@Param("pageSupport") PageSupport pageSupport);
}
