<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  
	int age  = Integer.parseInt((request.getParameter("age")));
	if(age >= 20){
		response.sendRedirect("req_ex01_ok.jsp");
	}else{
		response.sendRedirect("req_ex01_no.jsp");
		
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>