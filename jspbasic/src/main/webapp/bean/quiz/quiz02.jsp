<%@page import="com.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	/*
	1.앞에서 넘어온 폼값을 받아서 처리합니다
	2.pw와 pwcheck가 같다면 user객체에 form에서 넘어온 id,pw를 저장합니다,
	User객체를 quiz03 .jsp로 넘깁니다.
	"화면서 id님의 회원가입을 축하합니다 . 비밀번호는 xxx입니다."
	
	3.pw와 pw_check가 다르다면
	quiz04.jsp로 넘어가서"회원가입에 실패했습니다." 출력"
	
	*/

	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");	
	String pw = request.getParameter("pw");	
	String pw_check = request.getParameter("pw_check");	
	
	if(pw.equals(pw_check)){
		User user = new User();
		user.setId(id);
		user.setPw(pw);
		
		request.setAttribute("user", user);
		
		RequestDispatcher dp = request.getRequestDispatcher("quiz03.jsp");
		dp.forward(request, response);
		
	}else{
		response.sendRedirect("quiz04.jsp");
	}
	
%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<%
	  User user = new User();
    user.setId(id);
    user.setPw(pw);
    user.setPw_check(pw_check);
    
   if(pw.equals(pw_check)){
	   user.setId(id);
	   user.setPw(pw);
   }
    
    request.setAttribute("user", user);
    RequestDispatcher dp = request.getRequestDispatcher("bean_use_java.jsp");
    dp.forward(request, response);
	%>
	
	</body>
</html>