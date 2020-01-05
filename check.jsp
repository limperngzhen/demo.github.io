<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>	

<%
try{
 sql="use product";
 con.createStatement().execute(sql);
 
	if(request.getParameter("id") !="" && request.getParameter("pwd") !="" )
	{
   //  sql = "SELECT * FROM product.member WHERE id='" +request.getParameter("id") + "'  AND pwd='" + request.getParameter("pwd") + "'"  ; 
    sql = "SELECT * FROM product.member WHERE id=? AND pwd=?";
	//ResultSet rs =con.createStatement().executeQuery(sql);
	PreparedStatement pstmt = null;
	pstmt=con.prepareStatement(sql);
    pstmt.setString(1,request.getParameter("id"));
    pstmt.setString(2,request.getParameter("pwd"));
	
	ResultSet rs = pstmt.executeQuery();
    if(rs.next())
	{            
        session.setAttribute("id",request.getParameter("id"));
        response.sendRedirect("index2.jsp") ;

    }
    else
	 {
		out.print("<script>");
		out.print("alert('帳號或密碼錯誤，請重新登入')");
		out.print("</script>");
		out.print("<meta http-equiv='refresh' content='0.1 url=index.jsp'>");
     }
	}
	else 
	{  
   
        out.print("<script>");
		out.print("alert('請輸入帳號密碼')");
		out.print("</script>");
		out.print("<meta http-equiv='refresh' content='0.1 url=index.jsp'>");
   
	}

}

 catch (SQLException sExec) {
	 out.print("<script>");
          out.print("alert('帳號或密碼錯誤')");
		   out.print("</script>");
		   out.print("<meta http-equiv='refresh' content='0.1 url=index.jsp'>");
    }

%>


