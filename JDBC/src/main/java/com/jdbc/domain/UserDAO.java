package com.jdbc.domain;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
	
	//단순 클래스 싱글톤 
	// 싱글톤 패턴은 하나의 객체만 생성하여 사용하도록 만드는 디자인  패턴이다
	//즉 객체를 하나만 한개로 제한을 한다.
	//디비랑 연결할건 하나만 있으면된다
	//여러개의 객체를 만들면(생성되게하면) 연결을할때마다 메모리 소모가크다(메모리 과부하가 올수있는경우)
	//DAO객체는 DB연동을 담당하는 클래스로 싱글톤 방식으로 생산함.
	
	//1. 스스로의 객체를 맴버변수로 선언하고 한개로 제한시킴
	//
	//private /*은닉을위해 프라이빗을사용*/ static /*스태틱을 사용하면 클래스맴버가 되면서 단한개의 변수가 된다*/
	private static UserDAO instance = new UserDAO();
	
	//2.외부에서 객체를 생성하지 못하게 제한을 걸어야함 
	// private설정을 함
	private UserDAO() {
		//생성자가 한번 동작할때 다음과 같은 동작을 처리한다.
		//1. 드라이버와 연결
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 호출도중 에러발생");
			
		}
	}
	//3. 외부에서 객체를 요구할때 getter 를사용해서 반환시킨다.
		//자기스스로만든맴버변수를 전달하게 됩니다.
	public static UserDAO getInstance() {
		return instance;
	}
	
	//-----중복되는 코드를 맴버변수로선언하겠습니다-----
	//커넥션 만들때 사용
	private String url ="jdbc:mysql://localhost:3306/jdbctest?serverTimezone=Asia/Seoul";
	private String user="jdbc";
	private String password="jdbc";
	//처리할때 
	private Connection conn =null;
	private PreparedStatement pstmt =null;
	private ResultSet rs =null;
	
	
	//============기능을 메서드로 선언하기
	//회원가입
	public int join(UserVO vo) {
		int result = 0;
		
		String sql ="insert into user values(?,?,?,?,?,?)";
		
		try {	//Connection객체생성하기
			conn =DriverManager.getConnection(url,user,password);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPw());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getPhone1());
			pstmt.setString(5, vo.getPhone2());
			pstmt.setString(6, vo.getGender());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn != null )conn.close();
				if(pstmt != null)pstmt.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
		
		return result; //반환타입이 있는건 반환타입을 먼저 고려해서 만들면 좋다.
	}
	// 로그인 기능
	public boolean login(String id, String pw) {
	    boolean result = false;
	    String sql = "SELECT * FROM user WHERE id = ? AND pw = ?";
	    
	    try {
	        conn = DriverManager.getConnection(url, user, password);
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setString(1, id);
	        pstmt.setString(2, pw);
	        
	        rs = pstmt.executeQuery();
	        
	        // 결과가 존재한다면 로그인 성공
	        if (rs.next()) {
	            result = true;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (rs != null) rs.close();
	            if (pstmt != null) pstmt.close();
	            if (conn != null) conn.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	    
	    return result;
	}
	
	//로그인메서드
	public int login1(String id, String pw) {
		int result = 0;
		
		
		String sql = "select *from user where id =? and pw=?";
		
		try {
			conn = DriverManager.getConnection(url,user,password);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) result =1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn != null)conn.close();
				if(pstmt != null )pstmt.close();
				if(rs != null)rs.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
		
		
		
		return result;
	}

	
}
