<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>01.scriptlet02.jsp</title>
	</head>
	<body>
		<%
		
		int i =1;
		while(i >= 20){
			i++;
			out.println(" 4 x " +i+" = "+4*i+"<br>");
			out.println("=========================<br>");
			
			%>
			<input type="checkbox" name="intro">JAVA		
			
			<% 
			
			
			
		}
		%>
		<hr>
		1.체크박스 20개를 for문을 이용하여 가로로 생성
		<%
		
		for(int j = 1; j <=20 ; j++){
		%> 
			<br>
			<input type = "checkbox" name = "test">
		<%
		}
		
		%>
		

	</body>
</html>