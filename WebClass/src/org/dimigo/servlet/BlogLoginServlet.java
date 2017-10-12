package org.dimigo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;

/**
 * Servlet implementation class BlogLoginServlet
 */
@WebServlet("/bloglogin")
public class BlogLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//login.jsp 포워딩
		RequestDispatcher rd =request.getRequestDispatcher("/myblog/bloglogin.jsp");
		rd.forward(request, response);
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		System.out.printf("id: %s, pwd: %s\n",id,pwd);
		System.out.printf("pwd: %s\n",pwd);
		
		response.setContentType("text/html;charset-utf-8");
		
		// id, pwd 정확성 체크
		//boolean result=false;
		String realId="test@naver.com";
		if(realId.equals(id)){
			//세션에 사용자 정보생성
			HttpSession session=request.getSession();
			
			UserVO user=new UserVO();
			user.setId(id);
			user.setName("홍길동");
			user.setNickname("디오");
	
			session.setAttribute("user", user);
			
			RequestDispatcher rd =request.getRequestDispatcher("/myblog/index.jsp");
			rd.forward(request, response);
		}
	
		else {
			request.setAttribute("msg", "error");
			RequestDispatcher rd =request.getRequestDispatcher("/myblog/bloglogin.jsp");
			rd.forward(request, response);	
		}
		

	}
	
}
