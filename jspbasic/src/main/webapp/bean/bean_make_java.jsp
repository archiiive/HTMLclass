<%@page import="com.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>   
<meta charset="UTF-8">
<title>bean_make_java.jsp </title>
</head>
<body>
	   <h2>자바코드를 이용해 bean 사용</h2>
   <%
      User user = new User();
      user.setId("k");
      user.setPw("k");
      user.setEmail("email");
      user.setName("name");
      
      request.setAttribute("user", user);
      RequestDispatcher dp = request.getRequestDispatcher("bean_use_java.jsp");
      dp.forward(request, response);
      
   %>

</body>
</html>