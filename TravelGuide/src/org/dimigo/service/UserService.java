package org.dimigo.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;

import org.dimigo.dao.UserDao;
import org.dimigo.vo.UserVO;

public class UserService extends AbstractService{

	public UserVO login(UserVO user) throws Exception{
		
		Connection conn = null;
		try{
			conn=getConnection();
			UserDao dao = new UserDao(conn);
			UserVO result = dao.searchUser(user);
			
			if(result == null)
				throw new Exception("Invalid username or password");
			
			return result;
			
		}finally{
			if(conn != null) conn.close();
		}
	}
	
	public void  signup(UserVO user) throws Exception{
		//DB에 사용자 등록
		Connection conn = null;
		try{
			conn=getConnection();
			UserDao dao = new UserDao(conn);
			
			// 사용중인 아이디인제 체크
			UserVO result = dao.searchUserById(user);
			if(result != null)
				throw new Exception("이미 사용중인 아이디입니다.");
			
			
			// 회원가입 처리
			dao.insertUser(user);
			
		}finally{
			if(conn != null) conn.close();
		}
	}
	
		
	
	
	public List<UserVO> searchUserList() throws Exception{
		//DB에서 사용자 정보 조회
		//ArrayList를 생성한 후 UserVO객체 담기
		Connection conn = null;
		try{
			conn=getConnection();
			UserDao dao = new UserDao(conn);
	
			
			return dao.searchUserList();
			
		}finally{
			if(conn != null) conn.close();
		}
	
		
	}
	
	
	
}




