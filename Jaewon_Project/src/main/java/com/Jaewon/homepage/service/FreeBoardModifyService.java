package com.Jaewon.homepage.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.Jaewon.homepage.db.FreeBoardDAO;

public class FreeBoardModifyService implements IFreeBoardService {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		
        Map<String, Object>map = model.asMap();
		
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String no = request.getParameter("no");
		String id = request.getParameter("id");
		String f_subject = request.getParameter("f_subject");
		String f_content = request.getParameter("f_content");
		
		FreeBoardDAO dao = new FreeBoardDAO();
		dao.modify(no,id,f_subject,f_content);

	}

}
