<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>	

	
	<%
	request.setCharacterEncoding("utf-8");
	try {
		  
           sql="use product";
		   
           con.createStatement().execute(sql);
		  
		  // sql="select * from omelet union select * from burger union select * from others";
		  sql="select * from omelet where name='"+request.getParameter("type")+"'";
		  sql+="union select * from burger where name='"+request.getParameter("type")+"'"; 
		  sql+="union select * from others where name='"+request.getParameter("type")+"'";
		  ResultSet rs=con.createStatement().executeQuery(sql);
		  out.print(request.getParameter("type"));
		   
		   String new_id=request.getParameter("up_id");
		   String new_name=request.getParameter("up_name");
		   String new_price=request.getParameter("up_price");
		   String new_nofile=request.getParameter("up_nofile");
		   String new_img=request.getParameter("up_img");
		   String new_inventory=request.getParameter("up_inventory");
		   
		   if(Integer.parseInt(new_inventory)>0)
		   {
		                             
		   
	     // sql = "UPDATE `omelet` SET `id`='"+new_id+"',";  
		  sql = "UPDATE `omelet` SET `name`='"+new_name+"',";
		  sql += "  `price`='"+new_price+"',";
		  sql += "  `nofile`='"+new_nofile+"',";
		  sql += "  `pathfile`='"+new_img+"',";
		  sql += "  `ll`='"+new_inventory+"'where name='"+request.getParameter("type")+"'";
		  con.createStatement().executeUpdate(sql);
    
		  
		  sql = "UPDATE `burger` SET `name`='"+new_name+"',";
		  sql += "  `price`='"+new_price+"',";
		  sql += "  `nofile`='"+new_nofile+"',";
		  sql += "  `pathfile`='"+new_img+"',";
		  sql += "  `ll`='"+new_inventory+"'where name='"+request.getParameter("type")+"'";
		  con.createStatement().executeUpdate(sql);
		  
		  
		 
		  sql = "UPDATE `others` SET `name`='"+new_name+"',";
		  sql += "  `price`='"+new_price+"',";
		  sql += "  `nofile`='"+new_nofile+"',";
		  sql += "  `pathfile`='"+new_img+"',";
		  sql += "  `ll`='"+new_inventory+"'where name='"+request.getParameter("type")+"'";
		  con.createStatement().executeUpdate(sql);
		  
		  
		  
		  response.sendRedirect("itemlist.jsp");
		  
		   }
		   else
		   {
			   %>
			    <script language="javascript">
				alert("庫存數量必須大於0")
				location.href="javascript:history.go(-1)"
				</script>  
<%			   
		   }
		  
    con.createStatement().execute(sql);
	
	con.close();	
	}	
	
	 catch (SQLException sExec)
	 {
           out.println("SQL錯誤"+sExec.toString());
    }
	%>


