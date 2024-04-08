<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
/*
	idCheck 쿠키를 찾아서, idCheck 쿠키가 있다면,
	해당 값을 얻어서 id 안에 미리 값을가지게작성하는 코드

*/
	Cookie[] cooks = request.getCookies();
	String id="";
	if(cooks != null){ //쿠키가 널이 아니면 실행
		for(int i = 0 ; i < cooks.length ; i++){
			if(cooks[i].getName().equals("idCheck")){
				id = cooks[i].getValue();
			}
		}
	}
	
%>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h2>쿠키 사용하기</h2>
	<form action="cookie_login_ok.jsp" method="post">
	아이디 : <input type ="text" name = "id" size = "10" value"<%=id %>"><br>
	비밀번호 :<input type = "password" name="pw" size="10"><br>
	<input type="submit" value="로그인">
	<input type ="checkbox" name ="idcheck" value="y">아이디 기억하기
	</form>
	
	

</body>
</html>