<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
    <%
    
    String id = (String)session.getAttribute("id"); //type casting �ʿ�
    String name = (String)session.getAttribute("user_name"); //type casting �ʿ�
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
if(id != null){
   %> <h2><%=id %> (<%=name %>)�� �ݰ�����!!</h2><%
}
else{
   response.sendRedirect("session_login.jsp");
}
%>
<a href="logout.jsp">�α׾ƿ�</a>
</body>
</html>