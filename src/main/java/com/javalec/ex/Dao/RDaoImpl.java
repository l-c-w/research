package com.javalec.ex.Dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javalec.ex.Dto.UserDto;
@Repository
public class RDaoImpl implements RDao {
	
	@Inject
	SqlSession sqlSession;
	
	String namespace="com.javalec.ex.Dao.RDao";

	@Override
	public UserDto login(UserDto userDto) throws Exception {
		
		return sqlSession.selectOne(namespace+".login", userDto);
	}

}
