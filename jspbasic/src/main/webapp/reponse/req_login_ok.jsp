<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	/*
	login.jsp페이지로부터 넘어온 id,pw를 받아처리
	id가 만약에 abc1234이고 비밀번호가 asc123이라면 로그인 성공이라고 간주하겠습니다.
	login welcom 페이지로 디라이렉트
	
	
	id가 틀린경우 login_id_fail.jsp 페이지로 리다이렉트 
	pw가 틀린경우 login_pw_fail.jsp 페이지로 리다이렉트
	*/
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id.equals("abc1234")){
		if(pw.equals("acd123")){
			//로그인성공
			response.sendRedirect("login_welcome.jsp");
		}else{
			response.sendRedirect("login_pw_fail.jsp");
		}
	}else{
		//아이디오류
		response.sendRedirect("login_id_fail.jsp");
	}
	


%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>

	</body>
	</html>