<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	
	//세션을 이용하여 인증되지 않은 사람들을 login페이지로 이동시킴
	if(session.getAttribute("user_id") == null){
		response.sendRedirect("login.jsp");	 //null이면 바로로그인페이지로 빼버림 
	}
		String id =(String)session.getAttribute("user_id");
%>

<html>
<head>
<meta charset="UTF-8">
<title>Mypage</title>
</head>
<body>
	<h2><%=id%>님 환영합니다.</h2>
	
	<a href="logout.jsp">로그아웃</a>
	<a href="modify_ok">정보수정</a>
	<a href="delete_ok">회원탈퇴</a>
	

</body>
</html>