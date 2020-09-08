package com.javalec.ex.Controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.ex.Dto.RsDto;
import com.javalec.ex.Dto.UserDto;
import com.javalec.ex.Service.RService;

@Controller
public class RContorller {

	@Inject
	RService rService;
	//로그인 페이지로 이동
	@RequestMapping("login_page")
	public String login_page(Model model) {
		model.addAttribute("login_check",null);
		
		return "login/login";
	}
	
	//로그인
	@RequestMapping("login")
	public String login(UserDto userDto,HttpSession session,Model model)throws Exception {
		
		
		model.addAttribute("login_check",rService.login(userDto, session));
		
		return "login/login";
	}
	
	//로그아웃
	@RequestMapping("logout")
	public String logout(HttpSession session)throws Exception {
		session.invalidate();
		
		return "redirect:login_page";
	}
		
	//설문 페이지로 이동
	@RequestMapping("researchCreate_page")
	public String researchCreate_page(HttpServletRequest request,RsDto rsDto,Model model) {
			
		return "research/researchCreate";
	}
	
	@RequestMapping("researchCreate")
	public String researchCreate(HttpServletRequest request,RsDto rsDto,Model model)throws Exception {
		System.out.println("오냐?");
			rService.researchCreate(rsDto, request);
			
			return "redirect:researchList";
	}
			
	
	
	@RequestMapping("header")
	public String header() {
		
		return "header_footer/header";
	}
	
	@RequestMapping("researchChoiceReasonPopup")
	public String researchChoiceReasonPopup() {
		
		return "research/researchChoiceReasonPopup";
	}
	
	@RequestMapping("researchEdit")
	public String researchEdit() {
		
		return "research/researchEdit";
	}
	
	@RequestMapping("researchList")
	public String researchList() {
		
		return "research/researchList";
	}
	
	@RequestMapping("researchResult")
	public String researchResult() {
		
		return "research/researchResult";
	}
	
	@RequestMapping("researchView")
	public String researchView() {
		
		return "research/researchView";
	}
	
}
