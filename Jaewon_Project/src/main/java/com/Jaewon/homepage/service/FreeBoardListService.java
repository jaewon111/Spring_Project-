package com.Jaewon.homepage.service;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.Jaewon.homepage.db.FreeBoardDAO;
import com.Jaewon.homepage.db.FreeBoardDTO;

public class FreeBoardListService implements IFreeBoardService {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		
		FreeBoardDAO dao = new FreeBoardDAO();
		
		ArrayList<FreeBoardDTO> dtos = dao.list();
		System.out.println("--------------FreeBoardListService---------------");
		
		model.addAttribute("list",dtos);

	}

}
