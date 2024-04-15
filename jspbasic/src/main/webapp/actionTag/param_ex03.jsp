<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>


<%

String name = request.getParameter("name");
String nick = request.getParameter("nick");

%>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
		이름 : <%=name %><br>
		닉네임:<%=nick %><br>
		

</body>
</html>