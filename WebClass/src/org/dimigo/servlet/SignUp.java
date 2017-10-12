package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;

import com.google.gson.Gson;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/signup")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd =request.getRequestDispatcher("/jsp/signup.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id=request.getParameter("inputEmail");    //input name입력
		String pwd=request.getParameter("inputPassword");
		String name=request.getParameter("inputName");
		String nickname=request.getParameter("inputNickName");
		
		System.out.printf("id: %s, pwd: %s\n",id,pwd);
		
		response.setContentType("application/json;charset-utf-8");
		PrintWriter out=response.getWriter();
		
		boolean result = false;
		
		//Gson Library
		Map<String, String> map=new HashMap<String, String>();
				
		if(result) {
			map.put("msg", "success");
		} else {
			map.put("msg", "error");
		}
		
		Gson gson=new Gson();
		String json=gson.toJson(map);
				
		System.out.println(json.toString());
		out.write(json.toString());;
		out.close();
		
		//Ajax는 포워딩 불가 , 자신을 호출한 페이지로 돌아감

	}

}
