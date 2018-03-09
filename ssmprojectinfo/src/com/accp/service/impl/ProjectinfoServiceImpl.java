package com.accp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.accp.dao.ProjectinfoMapper;
import com.accp.pojo.Projectinfo;
import com.accp.service.ProjectinfoService;
import com.accp.tools.PageSupport;
@Service("projectinfoService")
public class ProjectinfoServiceImpl implements ProjectinfoService {
	@Autowired
	private ProjectinfoMapper projectinfoMapper;
	@Override
	public int getProjectinfoCount(int status) throws Exception {
		return projectinfoMapper.getProjectinfoCount(status);
	}

	@Override
	public List<Projectinfo> getProjectinfoByStatus(int status,
			PageSupport pageSupport) throws Exception {
		return this.projectinfoMapper.getProjectinfoByStatus(status, pageSupport);
	}

}
