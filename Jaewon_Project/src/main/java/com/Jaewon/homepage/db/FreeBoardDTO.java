package com.Jaewon.homepage.db;

import java.sql.Timestamp;

public class FreeBoardDTO {
	   private int no;
	   private String id;
	   private String f_subject;
	   private Timestamp f_date;
	   private String f_ref;
	   private String f_content;
	   
	    public String getF_content() {
		return f_content;
	}

	public void setF_content(String f_content) {
		this.f_content = f_content;
	}

		public FreeBoardDTO() {
			// TODO Auto-generated constructor stub
		}
		public FreeBoardDTO(int no,String id,String f_subject,String f_Content, Timestamp f_date, String f_ref) {
			this.no = no;
			this.id = id;
			this.f_subject = f_subject;
			this.f_content = f_Content;
			this.f_date = f_date;
			this.f_ref = f_ref;
		}
		
	   public int getNo() {
		return no;
	}



	public void setNo(int no) {
		this.no = no;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getF_subject() {
		return f_subject;
	}



	public void setF_subject(String f_subject) {
		this.f_subject = f_subject;
	}



	public void setF_date(Timestamp f_date) {
		this.f_date = f_date;
	}
	   public Timestamp getF_date() {
		return f_date;
	}

	public String getF_ref() {
		return f_ref;
	}

	public void setF_ref(String f_ref) {
		this.f_ref = f_ref;
	}




			
	   
	

	

}
