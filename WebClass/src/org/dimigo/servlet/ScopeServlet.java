package org.dimigo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javafx.application.Application;

/**
 * Servlet implementation class ScopeServlet
 */
@WebServlet("/scope")
public class ScopeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScopeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			//id, pwd값을 뽑아서 출력하기
			String id=request.getParameter("id");
			String pwd=request.getParameter("pwd");
			System.out.printf("id : %s, pwd : %s\n",id,pwd);
			
			if(id==null || id.trim().equals("")) //trim은 스페이스 제거
				throw new Exception("아이디는 필수항목입니다.");
			
			
			//1.request scope (거래당 정보)
			request.setAttribute("key", "rValue");
			
			//2.session scope (사용자 정보)
			request.getSession().setAttribute("key", "sValue");
			
			//3.application scope
			request.getServletContext().setAttribute("key", "aValue");
			
			RequestDispatcher rd =request.getRequestDispatcher("/jsp/scope.jsp");
			rd.forward(request, response);	
		
		} catch(Exception e){
			request.setAttribute("error", e.getMessage());
			RequestDispatcher rd =request.getRequestDispatcher("/jsp/scope.jsp");
			rd.forward(request, response);	
		
		}
			
	}

}
