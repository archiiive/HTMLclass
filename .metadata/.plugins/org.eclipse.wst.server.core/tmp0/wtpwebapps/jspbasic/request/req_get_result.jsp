<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String name = request.getParameter("name"); //겟 파라미터는 무조건 문자열로 넘긴다
	String number = request.getParameter("number");
	 
	

%>    
    
    
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		이름:<%=name %> <br>
		숫자:<%=number %> <br>	
	</body>
</html>