<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
//��Ű ����ϱ�
//��Ű�� ��û �� �ڵ����� ���۵ǰ�, request�� �ڵ����� ����˴ϴ�.
   Cookie[] cArr = request.getCookies(); //��Ű �迭�� ����
   boolean flag = false;
   if(cArr!=null){
      //cookie is not null, then run
      for(int i =0;i<cArr.length;i++){
         if(cArr[i].getName().equals("show")){
            out.println(cArr[i].getValue()+"<br>");
            flag=true;
         }
      }
   }
   
   if(!flag){
      out.println("��Ű�� �����ϴ�");
   }
%>
<!DOCTYPE html>

<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>