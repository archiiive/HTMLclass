<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
				<form action="req_post_parameter.jsp" mehod="post">
			<!--  action 속성은 form 데이터를 전달할 어플리케이션이다 --> 
			
				아이디 : <input type ="text" size="10" name="id"><br>
				비밀번호 : <input type ="password" size="10" name="pw"><br>
	
				관심분야 :
				<input type="checkbox" name="intro" value="자바">자바
				<input type="checkbox" name="intro" value="JSP">JSP
				<input type="checkbox" name="intro" value="Database">Database
				<br>
				전공 : 
				<input type="radio" name="major" value="컴공">컴공
				<input type="radio" name="major" value="디자인">디자인
				<input type="radio" name="major" value="경영">경영 
				
				<br>
				
				
				통신사 :
				<select name = "phone">
						<option>SKT</option>
						<option>KT</option>
						<option>LGU</option>
				</select>
				 <br>
				이름 :  <input type="text" size="10" name="name"><br>
				주소 :  <input type="text" size="50" name="address"><br>
				
				<br>
				<input type = "submit" value="가입">
</body>
</html>