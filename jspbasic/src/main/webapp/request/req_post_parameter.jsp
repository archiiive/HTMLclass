<%@page import="java.util.Arrays"%>
<%@page import="java.lang.reflect.Array"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% //기본적으로 데이터 전송방식이 다르기 때문에 차이가 남.
	// 때문에 인코딩을 맞추는 설정이 있어야함.
	//request.setCharacterEncoding("utf-8"); 
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String address = request.getParameter("address"); 
//String intro = request.getParameter("intro"); //checkbox는 values메서드를 이용해서 처리함.
	String[] arr = request.getParameterValues("intro");
	String major = request.getParameter("major");
	String phone = request.getParameter("phone");
%>
<html>
<head>
<meta charset="UTF-8">
<title>req_post_parameter.jsp</title>
</head>
<body>


			아이디 : <%=id %> <br>
			비밀번호 :<%=pw %> <br>
			이름 :	<%=name %>	<br>
			주소 :	<%=address %> <br>
			관심분야 : <%=Arrays.toString(arr) %> <br>
			전공 : <%=major %> <br>
			통신사 : <%=phone %> <br>

</body>
</html>