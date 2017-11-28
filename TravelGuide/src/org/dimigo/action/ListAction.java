package org.dimigo.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dimigo.service.UserService;
import org.dimigo.vo.UserVO;

public class ListAction implements IAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//ArrayList를 생성한 후 UserVO객체 담기
		UserService service=new UserService();
		List<UserVO> list=service.searchUserList();
				
		request.setAttribute("list", list);
		RequestDispatcher rd =request.getRequestDispatcher("/jsp/list.jsp");
		rd.forward(request, response);	
	
	}
	

}
