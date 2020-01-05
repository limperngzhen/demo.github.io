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
		  
		   sql="select * from product.member where id ='"+session.getAttribute("id")+"'";
		   rs=con.createStatement().executeQuery(sql);
		   rs.next();
	       
	
	  if(rs.getString("rank").equals("2"))
		{
			
			response.sendRedirect("back.jsp");
		}
         else
		   {
			out.print("<script language=\'javascript\'>");
			out.print("alert(\'你並不是管理員\');");
			out.print("</script>");
			out.print("<meta http-equiv='refresh' content='0.1 url=index2.jsp'>");
			//response.sendRedirect("index2.jsp");
		   }
		
    
		
    con.createStatement().execute(sql);
	
	con.close();	
	}
		
	
	 catch (SQLException sExec)
	 {
           out.println("SQL錯誤"+sExec.toString());
    }
	}
		 else
		{
			out.print("<script language=\'javascript\'>");
			out.print("alert(\'請先登入\');");
			out.print("</script>");
			out.print("<meta http-equiv='refresh' content='0.1 url=index.jsp'>");
		}



%>