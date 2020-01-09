package com.Jaewon.homepage.service;

import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.Jaewon.homepage.db.MemberDAO;
import com.Jaewon.homepage.db.MemberDTO;

@Service
public class MemberService implements IMemberService {

	@Inject
	private MemberDAO manager;
	
	//ID 중복 검사 (AJAX)
	@Override
	public void check_id(String id, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		out.println(manager.check_id(id));
		out.close(); //닫기  
	}

	
	 // email 중복 검사(AJAX)
	@Override
	public void check_email(String email, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter(); 
		out.println(manager.check_email(email));
		out.close(); //닫기  
	}
	
	
	
    //회원가입  동일한 아이디 및 이메일 보유하는지 안하는지 검사  
	@Override
	public int join_member(MemberDTO member, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		
		if (manager.check_id(member.getId()) == 1)  
		{
			out.println("<script>");
			out.println("alert('동일한 아이디가 있습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return 0;
		} 
		
		else if (manager.check_email(member.getEmail()) == 1)
		{
			out.println("<script>");
			out.println("alert('동일한 이메일이 있습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return 0;
		}
		
		else
		{
			manager.join_member(member);
			return 1;
		}
			
	}
	
	
	
	//로그인 체크 
	@Override
	public MemberDTO login(MemberDTO member,HttpServletResponse response) throws Exception{
		response.setContentType("text/html;charset=utf-8");
		
		System.out.println("아이디체크 실행(memberservice)");
		PrintWriter out = response.getWriter();
		
		//없는 아이디일 경우
		if(manager.check_id(member.getId()) == 0) 
		{
			out.println("<script>");
			out.println("alert('존재하지 않는 아이디입니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return null;
		}
		else 
		{
			String pw = member.getPw();
			member = manager.login(member.getId());
			// 비밀번호가 다를 경우
			if(!member.getPw().equals(pw)) 
			{
				out.println("<script>");
				out.println("alert('비밀번호가 다릅니다.');");
				out.println("history.go(-1);");
				out.println("</script>");
				out.close();
				return null;
		
			}
			else
			{
				return member;  //member 반환
			}			
		
	      }
	}
	
	//로그아웃 실행
    @Override
    public void logout(HttpServletResponse response)throws Exception{
    	response.setContentType("text/html;charset=utf-8");

		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("location.href=document.referrer;"); //새로고침  
		out.println("</script>");
    	System.out.println("로그아웃 체크 실행(memberservice)");
		out.close();
    	
    }
    
    //회원정보 수정 
    @Override
    public MemberDTO update_mypage(MemberDTO member)throws Exception{
		manager.update_mypage(member);
    	return manager.login(member.getId());
    }
    
    //회원 탈퇴 
    @Override
    public boolean delete(MemberDTO member, HttpServletResponse response) throws Exception{
    	
		return true;
		
		
	
    }




	
	
    
	


}
