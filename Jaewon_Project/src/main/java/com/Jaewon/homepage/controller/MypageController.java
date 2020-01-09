package com.Jaewon.homepage.controller;


import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Jaewon.homepage.db.MemberDTO;
import com.Jaewon.homepage.service.MemberService;

//마이페이지
@Controller
@RequestMapping("/mypage/*")
public class MypageController {
	@Autowired
	private MemberService service;
	
	//마이페이지 폼 이동 
	@RequestMapping(value="/MypageForm.do")
	public String Mypage_Form() throws Exception{
		System.out.println("going to mypageform");
		return "/mypage/MypageForm";
	}
	
	//마이페이지 수정 
	@RequestMapping(value="/update_mypage.do", method=RequestMethod.POST)
	public String update_mypage(@ModelAttribute MemberDTO member, HttpSession session,
			RedirectAttributes rttr) throws Exception{
		  session.setAttribute("member", service.update_mypage(member));		
		  rttr.addFlashAttribute("msg","회원정보 수정 완료");
		  System.out.println("회원정보 수정 완료");
		  return "redirect:/mypage/MypageForm.do";
	}
	
	//회원탈퇴
	@RequestMapping("/delete")
	public String delete_mypage(@ModelAttribute MemberDTO member, HttpSession session, 
			HttpServletResponse response)
	throws Exception{
		
		if(service.delete(member, response)) {
			System.out.println("회원탈퇴 실행");
			session.invalidate();
		}
		System.out.println("회원탈퇴 성공");
		return "redirect:../index.jsp";
	}
	
	
	
	
}
