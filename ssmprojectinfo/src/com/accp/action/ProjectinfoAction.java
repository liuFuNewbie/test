package com.accp.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.accp.pojo.Projectinfo;
import com.accp.service.ProjectinfoService;
import com.accp.tools.PageSupport;
/**
 * 
 * @author MDS
 *
 */
@Controller
public class ProjectinfoAction {
	@Autowired
	private ProjectinfoService projectinfoService;

	@RequestMapping("/getProjectinfoByStatus")
	public String getProjectinfoByStatus(
			Model model,
			@RequestParam(value = "status", required = false) Integer status,
			@RequestParam(value = "currentPageNo", required = false,defaultValue="1") Integer currentPageNo) {
		int pageSize = 3;
		int totalCount = 0;
		try {
			totalCount = projectinfoService.getProjectinfoCount(status);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 创建分页工具类对象
		PageSupport pageSupport = new PageSupport();
		// 设置页的大小
		pageSupport.setPageSize(pageSize);
		// 设置总行数
		pageSupport.setTotalCount(totalCount);
		// 设置当前页数
		pageSupport.setCurrentPageNo(currentPageNo);
		// 创建对象
		List<Projectinfo> projectinfoList = null;
		try {
			projectinfoList = projectinfoService.getProjectinfoByStatus(status,
					pageSupport);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("status", status);
		model.addAttribute("pageSupport", pageSupport);
		model.addAttribute("projectinfoList", projectinfoList);
		return "index";
	}
}
