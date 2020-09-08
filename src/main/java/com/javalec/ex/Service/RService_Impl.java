package com.javalec.ex.Service;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.javalec.ex.Dao.RDao;
import com.javalec.ex.Dto.RsDto;
import com.javalec.ex.Dto.UserDto;

@Service
public class RService_Impl implements RService {
	
	@Inject
	RDao rDao;

	//로그인
	@Override
	public int login(UserDto userDto,HttpSession session) throws Exception {
			UserDto result = rDao.login(userDto);
			
			int login_check=0;
			if(userDto.getUser_pw().equals(result.getUser_pw())) {
				
				login_check=1;
				session.setAttribute("userID", result.getUser_id());
				session.setAttribute("userName", result.getUser_name());
				 
			}else if(result.getUser_pw()!=null) {
				login_check=2;
			}else {
				login_check=3;
			}
		return login_check;
	}

	@Override
	public int researchCreate(RsDto rsDto, HttpServletRequest request) throws Exception {
		
		System.out.println("제목:"+rsDto.getRs_title());
		System.out.println("작성자:"+rsDto.getRs_writer());
		System.out.println("시작일:"+rsDto.getRs_sdate());
		System.out.println("종료일:"+rsDto.getRs_edate());
		
		String questions[] = request.getParameterValues("question");
		for (int i = 0; i < questions.length; i++) {
			System.out.println(questions[i]);
		}
		
		
		return 0;
	}
	
	

}
