<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
		<body>
		<!--  a 태그를 이욯여 경로 이동 -->			
		<!-- 1. jspbasic 폴더에 03.express.jsp 파일로 접근 상대/절대 경로로 접근-->
	 <a href ="../../jspbasic/03.expression.jsp">상대경로1</a>
	 <a href = "/jspbasic/jspbasic/03.expression.jsp">절대경로</a>
		<!-- 2. TestServlet 서블릿 페이지로상대 절대 접근 -->
		<a href ="../../servlet/testServlet.jsp">상대2</a>
		<a href ="/jspbasic/servlet/testServlet.jsp">절대2</a>
		<!--3. image폴더에 있는 이미지 파일에 상대 경로로 접근-0-->
		<a href = "../../../../../../HTML/img_link.html">상대3</a>
		<a href = "/HTML/img_link.html">절대3</a>
		
		</body>
</html>