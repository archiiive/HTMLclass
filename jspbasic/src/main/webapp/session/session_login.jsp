<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>session_login.jsp</title>
</head>
<body>
<%
   
   String id = (String)session.getAttribute("id"); //type casting �ʿ�
   String name = (String)session.getAttribute("user_name"); //type casting �ʿ�
if(id==null){
   %> 
   <h2>���� �α���</h2>
   <form action="session_login_ok.jsp" method="post">
   ID : <input type="text" name="id"><br>
   PW : <input type="password" name="pw"><br>
   NICK : <input type="text" name="nick"><br>
   <input type="submit" name="login"><br>
   </form>
<%
}
else{
   response.sendRedirect("session_welcome.jsp");
}
%>

</body>
</html>