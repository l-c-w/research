package com.javalec.ex.Controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;

import com.javalec.ex.Service.RService;

@Controller
public class RContorller {

	@Inject
	RService rService;
	
	
}
