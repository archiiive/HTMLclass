<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	//쿠키 생성 방법
	//1. 쿠키 객체 생성 - 생성자 매개변수로 (쿠키이름, 쿠키값)
	Cookie idCoo = new Cookie("user_Id","kk123");
	Cookie nameCoo = new Cookie("user_name","홍킬동");
	
	//2,쿠키 시간 설정
	idCoo.setMaxAge(60*60); //1시간 3600초
	nameCoo.setMaxAge(20);//20s
	
	//3.응답 객체에 쿠키 탑재
	response.addCookie(idCoo);
	response.addCookie(nameCoo);

	

%>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<a hred="cookie_get.jsp">쿠키 확인하기</a>

</body>
</html>