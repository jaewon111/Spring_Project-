package com.Jaewon.homepage.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.Jaewon.homepage.db.FreeBoardDAO;
import com.Jaewon.homepage.db.FreeBoardDTO;

public class FreeBoardContentSerivce implements IFreeBoardService {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		Map<String, Object>map = model.asMap();
		
		HttpServletRequest request = (HttpServletRequest) map.get("request");
        
		String no= request.getParameter("no");
       
        FreeBoardDAO dao = new FreeBoardDAO();
        FreeBoardDTO dto = dao.cotentView(no);
        
		System.out.println("--------------FreeBoardContnet_viewService---------------");
        model.addAttribute("content_view",dto);
	}

}
