package com.Jaewon.homepage.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Jaewon.homepage.db.FreeBoardDAO;
import com.Jaewon.homepage.service.FreeBoardContentSerivce;
import com.Jaewon.homepage.service.FreeBoardDeleteService;
import com.Jaewon.homepage.service.FreeBoardListService;
import com.Jaewon.homepage.service.FreeBoardModifyService;
import com.Jaewon.homepage.service.FreeBoardWriteService;
import com.Jaewon.homepage.service.IFreeBoardService;
import com.Jaewon.homepage.service.MemberService;
import com.Jaewon.homepage.ulit.ConstantTemplate;







//자유게시판
@Controller
@RequestMapping("/freeboard/*")
public class FreeBoardController {
	
	private MemberService service;
    IFreeBoardService iservice;
	public JdbcTemplate template;
	

	@Autowired
	public void setTemplate(JdbcTemplate template) {
		this.template=template;
		ConstantTemplate.template=this.template;
	}
	
	
	//자유게시판 이동 
	@RequestMapping(value="/freeboardForm.do")
	public String freeboard_Form(Model model){
		
		iservice=new FreeBoardListService();
		iservice.execute(model);
		System.out.println("자유게시판이동(controller)");
		return "/freeboard/freeboardForm";
	}
	
	//글쓰기 작성 
	@RequestMapping(value="/write_view.do")
	public String write() throws Exception{
		 System.out.println("글쓰기 이동(controller)");
		  return "/freeboard/write_view";
	}
	
	//본문이동 및 조회수 카운터
	@RequestMapping(value="/content_view.do")
	public String content_view(HttpServletRequest request,Model model) {
		System.out.println("------/content_view()-------");
		   model.addAttribute("request", request);
		   
		   iservice = new FreeBoardContentSerivce();
		   iservice.execute(model);
		   
	       //조회수 카운터   아직안함
		   
		   
		 return "/freeboard/content_view";
		
	}
	
	//글쓰기
	 @RequestMapping("/write")
	public String write(HttpServletRequest request,Model model) {
		  System.out.println("---------write()----------");
		   model.addAttribute("request", request);
		   
		   iservice = new FreeBoardWriteService();
		   iservice.execute(model);
		   
		return "redirect:./freeboardForm.do";
	}
	 
	 //글삭제
	 @RequestMapping("/delete")
	 public String delete(HttpServletRequest request,Model model)
	 {
		 model.addAttribute("request",request);
		 
		 iservice = new FreeBoardDeleteService();
		 iservice.execute(model);
		 
		 return "redirect:./freeboardForm.do";
	 }
	 
	 //글 수정
	 @RequestMapping(method=RequestMethod.POST, value="/modify")
	 public String modify(HttpServletRequest request,Model model) {
		  model.addAttribute("request", request);
		  iservice = new FreeBoardModifyService();
		   iservice.execute(model);  
		   
		   return "redirect:./freeboardForm.do";
	 }

}
