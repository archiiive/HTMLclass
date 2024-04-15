		<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
	
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<jsp:useBean id="u1" class="com.bean.User" scope="page"/>
		<jsp:setProperty property="*" name="u1"/>
		<!--  id: 실제 변수명
		 	  class : 실제경로
		 	  scope 빈의 사용범위
		 	   -->
		 	   <%--setProperty는 setter 메서드는 사용 --%>
		 	   <jsp:setProperty property="id" name="u1" value="<%=id %>"/>
		 	   <jsp:setProperty property="pw" name="u1" value="<%=pw %>"/>
		 	   <jsp:setProperty property="name" name="u1" value="<%=name %>"/>
		 	   <jsp:setProperty property="email" name="u1" value="<%=email %>"/>
		 	   
		 	   <%--getProperty는 getter 메서드를 사용 --%>
		 	   <jsp:getProperty property="id" name="u1"/>
		 	   <jsp:getProperty property="pw" name="u1"/>
		 	   <jsp:getProperty property="email" name="u1"/>
		 	   <jsp:getProperty property="name" name="u1"/>

</body>
</html>