<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	//로그아웃처리  및 세션의 삭제, 리 다이렉트
	session.invalidate();
	response.sendRedirect("login.jsp");
	
	
	


%>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

</body>
</html>