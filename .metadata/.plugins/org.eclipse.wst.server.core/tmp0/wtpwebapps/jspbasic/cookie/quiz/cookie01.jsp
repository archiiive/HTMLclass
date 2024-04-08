<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
	/*
	1.Date 클래스를 이용하여 이 페이지에 접근한 시간을 0000년 00월 00일 형태로 생성
	날자형식을 문자열 형태로	show 라는 이름의 쿠키로 생성
	*/

 Date now = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

Cookie show = new Cookie("show",sdf.format(now));
show.setMaxAge(120);
response.addCookie(show);

%>
<html>
<head>
<meta charset="UTF-8">
<title>cookie01</title>
</head>
<body>
		<a href="cookie02.jsp"></a>

</body>
</html>