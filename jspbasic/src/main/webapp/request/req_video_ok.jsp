<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    String num = request.getParameter("num");
    Integer sel = Integer.parseInt(num);
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%
   if(num==null) {%>
   잘못된 접근
   <%}else if (sel ==1) { %>
   <div align="center">
      <h2>jsp 수업</h2>
      <p>수업 중의 하나</p>
       <hr>
      <iframe width="640" height="480" src="https://www.youtube.com/embed/0owutFzMLB8" title="T1 vs. DK | 패자조 매치 하이라이트 | 04.07 | 우리은행 2024 LCK 스프링 플레이오프 3라운드" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
   </div>
   <%} else if(sel ==2) { %> %>
   <div align="center">
      <h2>jsp 수업 리뉴얼</h2>
      <p>수업 중 2</p>
       <hr>
      <iframe width="640" height="480" src="https://www.youtube.com/embed/Oz2yR0NG-JQ" title="그 긴거엔 팔 긴거 | T1 vs. DK 게임2 하이라이트 | 04.07 | 우리은행 2024 LCK 스프링 플레이오프 3라운드" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
   </div>
   <%} %>
</body>
</html>