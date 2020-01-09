package com.Jaewon.homepage.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Jaewon.homepage.db.MemberDTO;
import com.Jaewon.homepage.service.MemberService;


//회원가입 
@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	
	
	@Autowired
	private MemberService service;
	
	//회원 가입 폼 이동 /MemberJoinForm.do
	@RequestMapping(value="/MemberJoinForm.do")
	public String MemberJoinForm() throws Exception{
		  System.out.println("This is MemberJoinForm");
		return "/member/MemberJoinForm";
	}
	
	

	//아이디 
	@RequestMapping(value="/check_id.do",method= RequestMethod.POST)
    public void check_id(@RequestParam("id") String id, HttpServletResponse response) 
     throws Exception{
		service.check_id(id, response);
	}
	
	//이메일
	@RequestMapping(value="/check_email.do",method= RequestMethod.POST)
    public void check_email(@RequestParam("email") String email, HttpServletResponse response) 
    	     throws Exception{
    			service.check_email(email, response);
    }
	

	
	//회원 가입 
	@RequestMapping(value = "/join_member.do", method = RequestMethod.POST)
	public String join_member(@ModelAttribute MemberDTO member, RedirectAttributes rttr, HttpServletResponse response) 
			throws Exception{
		rttr.addFlashAttribute("result", service.join_member(member, response));
		 System.out.println("회원가입 성공1");
		return "redirect:./join_member.jsp";
	}
	
	
	
		 
	

            
}

