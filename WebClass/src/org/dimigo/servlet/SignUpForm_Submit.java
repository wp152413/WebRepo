package org.dimigo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignUpForm_Submit
 */
@WebServlet("/signupForm_Submit")
public class SignUpForm_Submit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpForm_Submit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      // TODO Auto-generated method stub
	      RequestDispatcher rd = request.getRequestDispatcher("jsp/signup2(Form_submit).jsp");
	      rd.forward(request, response);
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      // TODO Auto-generated method stub
	      request.setCharacterEncoding("utf-8");
	      String id = request.getParameter("id");    // input name값 입력
	      String pwd = request.getParameter("pwd");
	      String name = request.getParameter("name");
	      String nickname = request.getParameter("nickname");
	      System.out.println("id : " + id + "pwd : " + pwd + "name : " + name + "nickname : " +nickname);
	      
	      boolean result = true;
	      
	      if(result) {
	         // 성공시 login.jsp 로 dispatch
	         RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
	         rd.forward(request, response);
	      } else {
	         // 실패시 모달 띄움
	         request.setAttribute("err", "error");
	         RequestDispatcher rd = request.getRequestDispatcher("jsp/signup.jsp");
	         rd.forward(request, response);
	      }
	      
	   }

	}