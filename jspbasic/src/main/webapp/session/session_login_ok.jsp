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
      //�ڹ� ��ũ��Ʈ�� ��������
      %>
      <Script>
     
      /* var a=1;
      bar b = "1";
      
      let c =1; //ES6 ���
      const d = "1"
       */
      /*�ڹٽ�ũ��Ʈ �Լ�*/
    /*   function �Լ��̸� (�Ű�����) {
    	  �Լ� ���๮�� 
      }
      //ES6��� �Լ�
      �̸� =()=>{ }
      
      ���� : for, if,switch,try...
       */
       
       //�ڹٽ�ũ��Ʈ�� ���� �Լ� , ���� ��ü/* 
       /*alert(); ���â
       confirm();Ȯ��â
       history.go(-1):�ڷΰ���
       location.href ="���" �����̷�Ʈ */
       
       check(); //�Լ��� ȣ��, ����Ǹ� �յ� ��𼭵� ����� ����
       
       function check(){
    	   alert("�α����� �����߽��ϴ�.");//���â
    	   history.go(-1); //�ڷΰ���
       }
      </Script>
       <% 
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