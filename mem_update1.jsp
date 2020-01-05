<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>	

<%
	request.setCharacterEncoding("utf-8");
	try {
		  
           sql="use product";
		   
           con.createStatement().execute(sql);
		  
		  sql="select * from member  where id='"+session.getAttribute("id")+"'";
		   ResultSet rs=con.createStatement().executeQuery(sql);
		  //out.print(request.getParameter("type"));
		   
		   
		   String new_name=request.getParameter("new_name");
		   String new_phone=request.getParameter("new_phone");
		   String new_address=request.getParameter("new_address");
		   String new_email=request.getParameter("new_email");
		   
	     
		  sql = "UPDATE `member` SET `name`='"+new_name+"',";
		  sql += "  `tel`='"+new_phone+"',";
		  sql += "  `address`='"+new_address+"',";
		  sql += "  `email`='"+new_email+"'where id='"+session.getAttribute("id")+"'";
		  con.createStatement().executeUpdate(sql);
    
		 
		  
		  response.sendRedirect("mem_center.jsp");
		  
    con.createStatement().execute(sql);
	
	con.close();	
	}	
	
	 catch (SQLException sExec)
	 {
           out.println("SQL錯誤"+sExec.toString());
    }
	%>
