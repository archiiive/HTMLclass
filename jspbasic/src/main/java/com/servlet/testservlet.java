package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/testservlet") //1. 어노테이션을 이용하는 URL맵핑!
public class testservlet extends HttpServlet { 
	private static final long serialVersionUID = 1L;
       
    public testservlet() {
        super();
        
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("안녕하세요");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<body>");
		out.print("이게 또 됩니다.");
		out.print("<script>");
		out.print("console.log('안녕하쇼')");
		out.print("</script>");
	    out.print("</body>");
	 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  
	}

}
