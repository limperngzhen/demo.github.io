<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
try{
	Class.forName = ("com.mysql.jdbc.Driver");
	try{
		String url="jdbc:mysql://localhost/?serverTimezone=CST";
		Connection con=DriverManager.getConnection(url,"root","1234");
		if(con.isClosed())
			out.print("Connect Fail");
		else{
		
		 con.createStatement().execute("use product");
		 
			if(request.getParameter("id") !="" && request.getParameter("pwd") !="" )
			{
				sql="use product";
				con.createStatement().execute(sql);
				//sql = "SELECT * FROM member WHERE id='" +request.getParameter("id") + "'  AND pwd='" + request.getParameter("pwd") + "'"  ; 
				sql = "SELECT * FROM member WHERE id=? AND pwd=?";

				//ResultSet rs =con.createStatement().executeQuery(sql);
				PreparedStatement pstmt = null;
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1,request.getParameter("id"));
				pstmt.setString(2,request.getParameter("pwd"));
				//out.print(request.getParameter("id")+request.getParameter("pwd"));
				ResultSet rs = pstmt.executeQuery();
				out.print(rs);
				
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
		 out.print("sql 錯誤");
				/*out.print("<script>");
				out.print("alert('Catch 帳號或密碼錯誤')");
				out.print("</script>");
				out.print("<meta http-equiv='refresh' content='0.1 url=index.jsp'>");*/
		}

%>


