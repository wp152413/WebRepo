package org.dimigo.action;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dimigo.service.UserService;
import org.dimigo.util.CommonUtil;
import org.dimigo.vo.UserVO;

import com.google.gson.Gson;

public class SignupAction implements IAction{
	
	
	private void validate(UserVO vo) throws Exception{
		if(CommonUtil.isEmpty(vo.getId())) throw new Exception("아이디를 입력하세요");
		if(CommonUtil.isEmpty(vo.getPwd())) throw new Exception("비밀번호를 입력하세요");
		if(CommonUtil.isEmpty(vo.getName())) throw new Exception("이름을 입력하세요");
		if(CommonUtil.isEmpty(vo.getNickname())) throw new Exception("닉네임 입력하세요");
		
		
		
	}

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		
		
		try{
			
			request.setCharacterEncoding("utf-8");
		    response.setContentType("text/html;carset=utf-8");
			
		    //입렵값 추출
		    String id = request.getParameter("inputEmail");    // input name값 입력
		    String pwd = request.getParameter("inputPassword");
		    String name = request.getParameter("inputName");
		    String nickname = request.getParameter("inputNickname");
		    System.out.println("id : " + id + " pwd : " + pwd + " name : " + name + " nickname : " +nickname);
		      
			
		    UserVO user= new UserVO(id,name,nickname);
		    user.setPwd(pwd);
		    
		    //입력값 검증
		    validate(user);
		      
		    //service 호출
		    UserService service=new UserService();
		    service.signup(user);
		      
		      
		    RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
		    rd.forward(request, response);
		      
		     		      
		      
		} catch(Exception e){
			e.printStackTrace();

			request.setAttribute("error", e.getMessage());
			RequestDispatcher rd = request.getRequestDispatcher("jsp/signup.jsp");
			rd.forward(request, response);

		}
	}		
		
				
}
