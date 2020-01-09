package com.Jaewon.homepage.service;

import javax.servlet.http.HttpServletResponse;

import com.Jaewon.homepage.db.MemberDTO;

public interface IMemberService {

	
	//아이디 체크
	public void check_id(String id,HttpServletResponse response) throws Exception;
	//이메일 체크
	public void check_email(String email,HttpServletResponse response) throws Exception;
	//회원가입
	public int join_member(MemberDTO member,HttpServletResponse response) throws Exception;
    //로그인기능
	public MemberDTO login(MemberDTO member, HttpServletResponse response) throws Exception;
	//로그아웃
	public void logout(HttpServletResponse response) throws Exception;
	//회원정보수정
	public MemberDTO update_mypage(MemberDTO member) throws Exception;
	//회원탈퇴
	public boolean delete(MemberDTO member, HttpServletResponse response) throws Exception;


}
