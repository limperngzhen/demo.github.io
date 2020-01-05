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

//Step 1: 載入資料庫驅動程式 
    try {

//Step 3: 選擇資料庫   
           sql="use product";
           con.createStatement().execute(sql);
		   
           //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1")編碼
		   String new_type=request.getParameter("type");
           String new_name=new String(request.getParameter("addname").getBytes("ISO-8859-1"));
          String new_id=request.getParameter("addid");
           String new_price=request.getParameter("addprice");
		   String new_nofile=request.getParameter("addnotile");
		   String new_img=request.getParameter("addimg");
		   String new_inventory=request.getParameter("addinventory");
		   
		   
           
//Step 4: 執行 SQL 指令	
           sql="insert "+new_type+" ( id,name, price, nofile, pathfile, ll) ";
           sql+="value ('" + new_id + "', ";
           sql+="'"+new_name+"', ";
		   sql+="'"+new_price+"', ";
           sql+="'"+new_nofile+"', ";
           sql+="'"+new_img+"', ";   
           sql+="'"+new_inventory+"')";      
//out.println(sql);
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
