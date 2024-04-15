package com.jdbc.ok;

 import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jdbc.domain.UserDAO;
import com.jdbc.domain.UserVO;


@WebServlet("/login_OK")
public class LoginOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public LoginOk() {
    	
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//폼데이터 처리
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		request.setCharacterEncoding("utf-8");

		
		UserDAO dao = UserDAO.getInstance();//싱글톤 객체를 호출하는법getInstrance로 가져온다
		UserVO vo = new UserVO(id, pw);
		
		int result = dao.login1(id, pw);
		
		if(result == 1) { //로그인성공
			HttpSession session = request.getSession();
			session.setAttribute("user_id", id);
			
			response.sendRedirect("mypage.jsp");
		}else {
			response.sendRedirect("login_fail.jsp");
		}
		
		/*
		 * 1.userDAO객체 생성
		 * 2.DAO에 login(id,pw)메서드를 생성한다
		 * 	>sql = select * from user where id= ? nad pw= ?
		 * 
		 * 3.로그인메서드 안에서 excutequery()구문으로 실행'
		 *  > rs.next()결과가 있으면 1 아니면(없으면) 0 반환
		 *  
		 *  4.login_ok에서는 세션을 id로 저장하고 화면으로 이동
		 *  	1인 경우 (성공) , mypage.jsp
		 *  		->XXX님 환영합니다.
		 *  	0인 경우 (실패) , login_fail.jsp로 이동
		 *  		->로그인 실패했습니다. 로그인 페이지로 이동 링크 생성 
		 */
	
	}
}
