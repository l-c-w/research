package com.javalec.ex.Dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
@Repository
public class RDaoImpl implements RDao {
	
	@Inject
	SqlSession sqlSession;
	
	String namespace="com.javalec.ex.Dao.RDao";

}
