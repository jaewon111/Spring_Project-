package com.Jaewon.homepage.db;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;

import com.Jaewon.homepage.ulit.ConstantTemplate;





public class FreeBoardDAO {
	
	JdbcTemplate template;
	DataSource dataSource;

	
	public FreeBoardDAO(){

		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/Oracle");
			System.out.println("--------lookup---------");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		this.template=ConstantTemplate.template;
	  }
	   
	//게시글 목록 
       public ArrayList<FreeBoardDTO> list()  {
		
		ArrayList<FreeBoardDTO>dtos=null;
		String query = "select no,id,f_subject,f_content,f_date,f_ref from freeboard order by no desc";
		dtos=(ArrayList<FreeBoardDTO>)template.query(query, new BeanPropertyRowMapper<FreeBoardDTO>(FreeBoardDTO.class));
		return dtos;
		
	}
       
     //본문 보기 
       public FreeBoardDTO cotentView(String strNO) {
    	   String query = "select * from freeboard where no=" +strNO;
    	 //  String query1 = "update freeboard set f_ref= f_ref + 1 where no="+strNO; 
		   FreeBoardDTO dto =(FreeBoardDTO) this.template.queryForObject(query, new BeanPropertyRowMapper(FreeBoardDTO.class));
		   
    	   return dto;
       
       }
       
       //글쓰기
       public void write(final String id, final String f_subject, final String f_content) {
    	   String query = "insert into freeboard(no,id,f_subject,f_content,f_date,f_ref)" +
                         "values(freeboard_no_seq.nextval,?,?,?,sysdate,1)";
    	   this.template.update(query,new PreparedStatementSetter(){
    		   
    		   @Override
    		   public void setValues(PreparedStatement ps)throws SQLException{
    			   ps.setString(1, id);
    			   ps.setString(2, f_subject);
    			   ps.setString(3, f_content);		   
    		   }
    		   
    	   });
       }
       
       //글삭제  
       public void delete(final String no) {
    	   String query = "delete from freeboard where no=?";
     
    	   this.template. update(query,new PreparedStatementSetter() {
   			
   			@Override
   			public void setValues(PreparedStatement ps) throws SQLException {
   				// TODO Auto-generated method stub
   				ps.setString(1, no);
   		
   			}
   		});
       }
       
       //글 수정
        public void modify(final String no, final String id , final String f_subject, final String f_content) {
        	String query = "update freeboard set f_subject=?, f_content=? where no =?";
        	template.update(query,new PreparedStatementSetter() {

				@Override
				public void setValues(PreparedStatement ps) throws SQLException {
					// TODO Auto-generated method stub
				
					ps.setString(1, f_subject);
					ps.setString(2, f_content);
					ps.setInt(3, Integer.parseInt(no));
				}

        	});
        	
        }
	
}
