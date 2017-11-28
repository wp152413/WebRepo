package org.dimigo.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SessionAction implements IAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
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

}
