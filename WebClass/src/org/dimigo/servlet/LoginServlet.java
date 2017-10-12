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
import org.json.simple.JSONObject;

import com.google.gson.Gson;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//login.jsp 포워딩
		RequestDispatcher rd =request.getRequestDispatcher("/jsp/login.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		System.out.printf("id: %s, pwd: %s\n",id,pwd);
		
		response.setContentType("text/html;charset-utf-8");
		
		// id, pwd 정확성 체크
		boolean result=true;
		
		if(result){
			//세션에 사용자 정보생성
			HttpSession session=request.getSession();
			
			UserVO user=new UserVO();
			user.setId(id);
			user.setName("도경수");
			user.setNickname("됴디오");
	
			session.setAttribute("user", user);
		
			RequestDispatcher rd =request.getRequestDispatcher("/jsp/home.jsp");
			rd.forward(request, response);
		}
	
		else {
			request.setAttribute("msg", "error");
			RequestDispatcher rd =request.getRequestDispatcher("/jsp/login.jsp");
			rd.forward(request, response);	
		}
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//@SuppressWarnings("unchecked")
	protected void doPost2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		System.out.printf("id: %s, pwd: %s\n",id,pwd);
		
		
		response.setContentType("application/json;charset-utf-8");
		PrintWriter out=response.getWriter();
				
		/*
		 * {
		 * 		"id":id
		 * 	}	
		 */
				
		/*out.println("{");
		out.println("\"id\" :"+"\""+id+"\"");
		out.println("}");
		*/
		
		//JSON Simple Library
//		JSONObject json =new JSONObject();
//		json.put("id", id);
//		System.out.println(json.toJSONString());
//		out.write(json.toString());
	
		//Gson Library
		Map<String, String> map=new HashMap<String, String>();
		
		map.put("id", id);
		Gson gson=new Gson();
		String json=gson.toJson(map);
		
		System.out.println(json.toString());
		out.write(json.toString());;
		out.close();
	}

}
