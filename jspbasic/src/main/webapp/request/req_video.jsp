<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <!-- 
   테이블 페이지에서 url주소 뒤에 있는 title변수로 이동
   if~elseif else로 다른 화면 보이게 처리
    -->
    <div align="center">
      <table>
         <tr>
            <th>이미지</th>
            <th>장르</th>
            <th>이름</th>
            <th>등록일</th>
         </tr>
         <tr>
            <td><a href="req_video_ok.jsp?num=1">
                  <img alt ="첫번째 영상" src ="../images/icon.png" width="200" height="100">
            </a>
            </td>
            <td>프로그램</td>
            <td>jsp수업 중 1</td>
            <td>240408</td>
         </tr>
                  <tr>
            <td><a href="req_video_ok.jsp?num=2">
                  <img alt ="두번째 영상" src ="../images/icon.png"width="200" height="100">
            </a>
            </td>
            <td>프로그램</td>
            <td>jsp수업 중 1</td>
            <td>240408</td>
         </tr>
         
      </table> 
    
    </div>
    
</body>
</html>