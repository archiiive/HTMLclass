<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
	//예약 현황이 있다면 예약좌석 꺼내서 처리
	List<String> list = new ArrayList<>();
	if(application.getAttribute("seats") != null){
		list = (List<String >) application.getAttribute("seats");
	}

%>
<title>reserve1.jsp</title>
</head>
<body>
	<div align = "center"></div>
	<h2>콘서트 예약</h2>
	<h4>예약할 좌석을 선택하세요</h4>
	<hr>
	
	<form action="reserve_ok.jsp" method = "post"></form>&nbsp;
	<%for(char c = 'A'; c<='Z'; c++) {%>
	<small><%=c %></small>&nbsp;&nbsp;
	<% } %> <br>
	<% for(int i =1; i<=6; i++){ %>
		<%=i %>

		<%for(char c = 'A'; c <= 'Z'; c++) {%>
		<%if(list.contains(c+"-"+i)){ %>
	<input type="checkbox" name ="seat" value="<%=c%>-<%=i%>"> <!-- c의 몇번째열 이렇게 나온다 -->
<%}else{ %>
<input type="checkbox" name ="seat" value="<%=c%>-<%=i%>"> 
<%} %>
	<%} %>
	<br>
	<%if(i ==3){ %>
	 <br>
	 <%} %>
	<%} %>
	<br>
	<input type="submit" value="예약">
	<input type="reset" value="취소">
	
</body>
</html>