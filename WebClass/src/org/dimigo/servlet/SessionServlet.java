package org.dimigo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SessionServlet
 */
@WebServlet("/session")
public class SessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//세션에 사용자 정보가 없으면 login.jsp 로 포워딩하고
		//있으면 jsp/sessionInfo.jsp로 포워딩
		//sessionInfo.jsp :id, name, nickname 그대로 출력
		
		if(request.getSession().getAttribute("user")==null){
			response.sendRedirect("jsp/login.jsp");
			
		} else{
			RequestDispatcher rd =request.getRequestDispatcher("/jsp/sessionInfo.jsp");
			rd.forward(request, response);
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
