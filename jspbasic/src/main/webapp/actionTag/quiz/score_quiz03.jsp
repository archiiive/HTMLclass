<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String name= (String)request.getAttribute("name");
double avg = (double)request.getAttribute("avg");
%>
<html>
<head>
<meta charset="UTF-8">
<title>score_quiz03.jsp</title>
</head>
<body>
		<%=name %>님 합격입니다 축하합니다
		평균<%=avg %>점 입니다.
		

</body>
</html>