<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>res_ex01</title>
</head>
<body>
	<h2>res_ex01</h2>
	<!--  나이를 입력받아 res_ex01_result 로 값을 전달하고, 그입력 나이에 따라서 미성년자와 성인을 구분한다
	20살 이상이면 성인입이나를 출력하는 페이지 res_ex_01_ok 
	20살 미만이면 미성년자 입니다 페이지로 이동 20살 미만이면 미성년 입니다 를출력하는 페이지
	res_ex01_no.jsp-->
	<form action="res_ex01_result.jsp">
		<input type="text" name="age">
		<input type="submit">
	</form>
</body>
</html>