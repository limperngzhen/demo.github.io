<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>		
	
	
<html>
<head>
<title>add</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<%
if(session.getAttribute("id")!=null)
{

    try
		{
 
		   sql="use product";
		   con.createStatement().execute(sql);
		   String new_name=(String)request.getParameter("name");
		   String new_price="";
		   String new_path=""; 
		   String new_nofile="";
		   sql="select * from menu where name='"+new_name+"'";
		   ResultSet rs = con.createStatement().executeQuery(sql);
		   rs.next();
		   new_price=rs.getString("price");
		   new_path=rs.getString("pathfile");
		   new_nofile=rs.getString("nofile");
           sql="use product";
           con.createStatement().execute(sql);
		   sql="select * from cart";
		   ResultSet rs1 = con.createStatement().executeQuery(sql);
		   rs1.last();
		   String a=rs1.getString("no");
		   int count=Integer.parseInt(a)+1;
           //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1")編碼
           String new_num=request.getParameter("amount");
		   String new_id=(String)session.getAttribute("id");
	       int new_totalprice=(Integer.parseInt(new_price)*Integer.parseInt(new_num));
			

           sql="insert cart (no, nofile, img, name, number, price, id, total_price) ";
           sql+="value ('" + count + "', ";
           sql+="'"+new_nofile+"', ";
           sql+="'"+new_path+"', ";
           sql+="'"+new_name+"', ";   
           sql+="'"+new_num+"', ";  
		   sql+="'"+new_price+"',"; 
           sql+="'"+new_id+"', ";
           sql+="'"+new_totalprice+"') ";		   


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

			out.print("<script language=\'javascript\'>");
			out.print("alert(\'請先登入\');");
			out.print("</script>");
			out.print("<meta http-equiv='refresh' content='0.1 url=index.jsp'>"); 

			}
%>
</body>
</html>
