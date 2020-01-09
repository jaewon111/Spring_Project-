package com.Jaewon.homepage.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Jaewon.homepage.db.MemberDTO;
import com.Jaewon.homepage.service.MemberService;


//로그인 ,로그아웃 
@Controller
@RequestMapping("/login/*")
public class LoginController {
	
	@Autowired
	private MemberService service;
	
	
	    //로그인 폼 이동 
		@RequestMapping(value="/loginForm.do",method = RequestMethod.GET)
		public String login_form() throws Exception{
			System.out.println("going to loginform");
			return "/login/loginForm"; 
		}
		
		//로그인 실행  
		@RequestMapping(value="/login.do", method=RequestMethod.POST)
		public String login(@ModelAttribute MemberDTO member,HttpSession session,
				HttpServletResponse response) throws Exception{
			member = service.login(member, response);
			session.setAttribute("member",member); //세션추가 
			System.out.println("start login");
			return "redirect:../index.jsp";
		}
		
		//로그아웃 실행  /login/logout.do를 찾아라 
		@RequestMapping(value ="/logout.do", method= {RequestMethod.GET, RequestMethod.POST})
		public String logout(HttpSession session, HttpServletResponse response)throws Exception{
			//session.invalidate(); //invalidate 또는 removeAttribute 둘중 하나만 사용하면 된다.
			session.removeAttribute("member");
			System.out.println("로그아웃실행(controller)");
			return "redirect:/";
		}
	
	

}
