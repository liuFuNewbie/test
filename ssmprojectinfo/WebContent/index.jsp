<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>宽带缴费
	<form action="getProjectinfoByStatus.action" method="post">
		申报状态：<select name="status">
			<option value="-1">全部</option>
			<option value="0"
				<c:if test="${requestScope.status==0 }">selected="selected"</c:if>>已申报</option>
			<option value="1"
				<c:if test="${requestScope.status==1 }">selected="selected"</c:if>>审核中</option>
			<option value="2"
				<c:if test="${requestScope.status==2 }">selected="selected"</c:if>>已审核</option>
		</select> <input type="submit" value="查询" />
	</form>
	<table border="1">
		<thead>
			<tr>
				<th colspan="6">申报项目列表</th>
			</tr>
		</thead>
		<tbody>
			<tr
				style="background-color: #999; font-size: 20px; font-weight: bolder;">
				<td>项目编号</td>
				<td>项目名称</td>
				<td>申报开始日期</td>
				<td>申报结束日期</td>
				<td>申报状态</td>
				<td>操作</td>
			</tr>
			<c:forEach items="${requestScope.projectinfoList }" var="list" varStatus="i">
				<tr
					<c:choose><c:when test="${i.count%2!=0 }">style="background-color: red;font-size: 20;"</c:when><c:otherwise>style="font-size: 20;"</c:otherwise></c:choose>>
					<td><c:out value="${list.id }"></c:out></td>
					<td><c:out value="${list.projectName }"></c:out></td>
					<td><c:out value="${list.startDate }"></c:out></td>
					<td><c:out value="${list.endDate }"></c:out></td>
					<td><c:choose>
							<c:when test="${list.status==0 }">已申报</c:when>
							<c:when test="${list.status==1 }">审核中</c:when>
							<c:otherwise>已审核</c:otherwise>
						</c:choose></td>
					<td><c:if test="${list.status!=2 }">
							<a href="#">审核了</a>
						</c:if></td>
				</tr>
			</c:forEach>
		</tbody>
		<tfoot>
			<c:set var="pageSupport" value="${requestScope.pageSupport }"></c:set>
			<tr>
				<td colspan="6" align="right">
					<a href="getProjectinfoByStatus.action?currentPageNo=1&status=${requestScope.status}">首页</a>&nbsp;
					<a href="getProjectinfoByStatus.action?currentPageNo=${pageSupport.currentPageNo-1 }&status=${requestScope.status}">上一页</a>&nbsp;
					<a href="getProjectinfoByStatus.action?currentPageNo=${pageSupport.currentPageNo+1 }&status=${requestScope.status}">下一页</a>&nbsp;
					<a href="getProjectinfoByStatus.action?currentPageNo=${pageSupport.totalPageCount }&status=${requestScope.status}">末页</a>&nbsp;
					第<c:out value="${pageSupport.currentPageNo }"></c:out>页/总<c:out value="${pageSupport.totalPageCount }"></c:out>页
				</td>
			</tr>
		</tfoot>
	</table>
</body>
</html>