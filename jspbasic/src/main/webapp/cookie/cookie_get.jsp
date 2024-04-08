<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
//	쿠키 사용하기
	//쿠키는 요청시  자동으로 전송되고, request에 자동으로 저장됩니다.
	Cookie[] arr =request.getCookies(); //리퀘스트에 저장되어있는 쿠키의 배열값
	
	if(arr!=null){ //쿠키가 null이 아니라면 즉 쿠키가 존재할때
		for(int i =0; i < arr.length;i++){
			out.print(arr[i].getName()+"<br>"); //쿠키 이름 얻기
			out.print(arr[i].getValue()+"<br>"); //쿠키 값 얻기
		}
	}


%>
<html>
<head>
<meta charset="UTF-8">
<title>cookie_get.jsp</title>
</head>
<body>

</body>
</html>