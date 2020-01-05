<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>		
<%request.setCharacterEncoding("UTF-8");%>	
	
<html>
<head>
<title>add</title>
</head>
<body>
<%

//Step 1: 載入資料庫驅動程式 
    try {

//Step 3: 選擇資料庫   
           sql="use product";
           con.createStatement().execute(sql);
           //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1")編碼
           String new_name=request.getParameter("name");
//         String new_name=request.getParameter("name");
           String new_id=(String)session.getAttribute("id");
           String new_subject=request.getParameter("subject");
           String new_content=request.getParameter("content");
           java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
//Step 4: 執行 SQL 指令	
           sql="insert guestboard (name, id, mean, aa, time) ";
           sql+="value ('" + new_name + "', ";
           sql+="'"+new_id+"', ";
           sql+="'"+new_subject+"', ";
           sql+="'"+new_content+"', ";   
           sql+="'"+new_date+"')";      
//out.println(sql);
           con.createStatement().execute(sql);
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
           response.sendRedirect("guestboard.jsp");
       
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }

%>
</body>
</html>
