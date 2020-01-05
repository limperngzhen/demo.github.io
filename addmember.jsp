<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>		
<%request.setCharacterEncoding("utf-8");%>	
	
<html>
<head>
<title>add</title>
</head>
<body>



<%

//Step 1: 載入資料庫驅動程式 
    try {

  
           sql="use product";
           con.createStatement().execute(sql);
		   String check = request.getParameter("register_username");
		   sql="select * from product.member where id='"+check+"'";
		   ResultSet rs=con.createStatement().executeQuery(sql);
		   if(rs.next())
		   {
			  out.print("<script>");
			  out.print("alert('帳號已被註冊')");
			  out.print("</script>"); 
			  out.print("<META HTTP-EQUIV='refresh' CONTENT='0; URL=index.jsp'>");
		   }
		   
		   else
		   {
           //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1")編碼
           String new_name=request.getParameter("register_name");
           String new_id=request.getParameter("register_username");
           String new_pwd=request.getParameter("register_password");
		   String new_pwdcheck=request.getParameter("register_checkpwd");
           String new_address=request.getParameter("register_address");
		   String new_sex=request.getParameter("register_sexual");
		   String new_tel=request.getParameter("register_phone");
		   String new_mail=request.getParameter("register_email");
          // request.setCharacterEncoding("UTF-8");
//Step 4: 執行 SQL 指令	

			if(new_pwd.equals(new_pwdcheck))
			{

           sql="insert product.member (name, id, pwd, pwdcheck, address, sex, tel, email) ";
           sql+="value ('" + new_name + "', ";
		   sql+="'"+new_id+"', ";
		   sql+="'"+new_pwd+"', ";
		   sql+="'"+new_pwdcheck+"', ";
		   sql+="'"+new_address+"', ";
		   sql+="'"+new_sex+"', ";
		   sql+="'"+new_tel+"', ";
           sql+="'"+new_mail+"')";
		   con.createStatement().execute(sql);
		   out.print("<script>");
		   out.print("alert('註冊成功 請再登入一次')");
		   out.print("</script>");
			}
			
			else
			{
				out.print("<script>");
				out.print("alert('密碼確認錯誤')");
				out.print("</script>");
				out.print("<META HTTP-EQUIV='refresh' CONTENT='0; URL=index.jsp'>");
			}
			
				}
          
//out.println(sql);
           
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
           out.print("<META HTTP-EQUIV='refresh' CONTENT='0; URL=index.jsp'>");
       
    }
    catch (SQLException sExec) {
			out.print("<script>");
			out.print("alert('帳號密碼錯誤')");
			out.print("</script>");
			out.print("<meta http-equiv='refresh' content='0.1 url=register.jsp'>");
    }

%>
</body>
</html>
