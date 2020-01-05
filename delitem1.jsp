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
<%
request.setCharacterEncoding("utf-8");
//Step 1: 載入資料庫驅動程式 
    try {

//Step 3: 選擇資料庫   
           sql="use product";
           con.createStatement().execute(sql);
		   
           //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1")編碼
		    String del_type=request.getParameter("type");
		   String del_name=request.getParameter("name");
           sql="select * from product."+del_type+" where name='"+del_name+"'";
		   con.createStatement().execute(sql);
           
//Step 4: 執行 SQL 指令	
           sql="delete from product."+del_type+" where name='"+del_name+"'";
           con.createStatement().execute(sql);
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
           response.sendRedirect("itemlist.jsp");
       
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }

%>
</body>
</html>
