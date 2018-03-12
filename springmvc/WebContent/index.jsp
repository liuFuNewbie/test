<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="student/add.action" method="post">
		用户名：<input type="text" name="stuName"/>
		密&nbsp;码：<input type="password" name="stuPwd"/>
		<input type="submit" value="submit"/>
	</form>
	<a href="studentNote.action">success</a>
	<a href="student/update.action?stuName=sadlkjf">update</a>
</body>
</html>