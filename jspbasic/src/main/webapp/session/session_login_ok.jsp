<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
   /*
   1. ���̵� ��й�ȣ �г��� �ޱ�
   2. ���� : ���̵�� ��й�ȣ�� ���� �����ϸ� user_id �̸����� id ���ǿ� ����, user_name �̸����� nick ���ǿ� ����,
      session_welcome �������� �ۼ�, �̵��� �Ŀ� "id��(name) ȯ���մϴ�."
      ���̵�� ��й�ȣ�� ��ġ���� ���� ��� �ٽ� �α��� �������� �����̷�Ʈ
   */
   request.setCharacterEncoding("utf-8");
   String id = request.getParameter("id"); // ���̵� �ޱ�
   String pw = request.getParameter("pw"); // ��й�ȣ �ޱ�
   String nick = request.getParameter("nick"); // ��й�ȣ �ޱ�
   
   if(id.equals(pw)){

      session.setAttribute("id", id);
      session.setAttribute("user_name",nick);
      response.sendRedirect("session_welcome.jsp");
   }
   else{

      response.sendRedirect("session_login.jsp");
   }

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>session_login_ok.jsp</title>
</head>
<body>
   
</body>
</html>