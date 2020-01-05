<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>	

 
<%
if(session.getAttribute("id") != null )
	{
	try {
		
           sql="use product";
		   ResultSet rs;
           con.createStatement().execute(sql);
		  
		   sql="delete from cart where id ='"+session.getAttribute("id")+"' and no ='"+request.getParameter("no")+"'";
		   con.createStatement().execute(sql);
	
	
	con.close();	
		response.sendRedirect("shopping_cart.jsp");
	}
		
	
	 catch (SQLException sExec)
	 {
           out.println("SQL錯誤"+sExec.toString());
    }
	}
		 else
		{
			out.print("請先登入!!"+"<br><br>");
			out.print("<a href=index.jsp>"+"按此登入"+"</a>");
		}



%>