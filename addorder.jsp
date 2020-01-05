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


<%request.setCharacterEncoding("utf-8");%>
<%

//Step 1: 載入資料庫驅動程式 
    try {

	
//Step 3: 選擇資料庫   
           sql="use product";
		   con.createStatement().execute(sql);
		   String iddd=(String)session.getAttribute("id");
           //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1")編碼
		   sql="select * from cart where id='"+iddd+"'";
		   ResultSet r=con.createStatement().executeQuery(sql);
		   while(r.next())
		   {
           String new_name=request.getParameter("order_name");
		   String new_id=(String)session.getAttribute("id");
           String new_pay=request.getParameter("payway");
		   String new_address=request.getParameter("order_address");
		   String new_num=r.getString("number");
		   
//Step 4: 執行 SQL 指令	
           sql="insert orders ( id, buyer, payway, address, no, nofile, img, name, number, price, total_price) ";
           sql+="value ('" + new_id + "', ";
		   sql+="'"+new_name+"', ";
		   sql+="'"+new_pay+"', ";
		   sql+="'"+new_address+"', ";
           sql+="'"+r.getString("no")+"', ";
		   sql+="'"+r.getString("nofile")+"', ";
		   sql+="'"+r.getString("img")+"', ";
		   sql+="'"+r.getString("name")+"', ";
		   sql+="'"+r.getString("number")+"', ";
		   sql+="'"+r.getString("price")+"', ";
		   sql+="'"+r.getString("total_price")+"')";
		   con.createStatement().execute(sql);
		   sql="select * from omelet where name='"+r.getString("name")+"'";
		   sql+="union select * from others where name='"+r.getString("name")+"'"; 
		   sql+="union select * from burger where name='"+r.getString("name")+"'";
		   ResultSet rs1=con.createStatement().executeQuery(sql);
		   rs1.next();
		   
		   int inventory=Integer.parseInt(rs1.getString("ll")); //庫存數量
		   sql="select * from cart where name='"+r.getString("name")+"'";
		   rs1=con.createStatement().executeQuery(sql);
		   rs1.next();
		   int num=Integer.parseInt(new_num);
		   int ii=0;
		   
		   ii=inventory-num;
		   sql = "UPDATE omelet SET ll='"+ii+"' where name='"+r.getString("name")+"'";  
		   con.createStatement().executeUpdate(sql);

		   
		   sql = "UPDATE others SET ll='"+ii+"' where name='"+r.getString("name")+"'";  
		   con.createStatement().executeUpdate(sql);
		   
		   		   
		   sql = "UPDATE burger SET ll='"+ii+"' where name='"+r.getString("name")+"'";  
		   con.createStatement().executeUpdate(sql);
		   
/////////////////////////////////////////////////////////////////		  
		   
		

           sql="delete from cart where id='"+iddd+"'";
           con.createStatement().execute(sql);

           
			
			
		   }
          
           
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
           response.sendRedirect("mem_order.jsp");
       
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }

%>
</body>
</html>
