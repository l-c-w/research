package com.javalec.ex.Service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javalec.ex.Dao.RDao;

@Service
public class RService_Impl implements RService {
	
	@Inject
	RDao rDao;

}
