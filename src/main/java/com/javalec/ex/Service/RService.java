package com.javalec.ex.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.javalec.ex.Dto.RsDto;
import com.javalec.ex.Dto.UserDto;

public interface RService {
	
	public int login(UserDto userDto,HttpSession session)throws Exception;
	
	public int researchCreate(RsDto rsDto, HttpServletRequest request)throws Exception;

}
