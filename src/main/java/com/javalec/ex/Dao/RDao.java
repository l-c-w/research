package com.javalec.ex.Dao;

import com.javalec.ex.Dto.UserDto;

public interface RDao {
	
	public UserDto login(UserDto userDto)throws Exception;

}
