
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!-- Step 0: import library -->
<%@ page import = "java.sql.*"%>
<html>
<head>
<title>create database</title>
</head>
<body>

<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/?serverTimezone=CST";
        String sql="use product";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="use product";
           con.createStatement().execute(sql);
//Step 4: 執行 SQL 指令, 若要操作記錄集, 需使用executeQuery, 才能傳回ResultSet	
           sql="select * from counter"; //算出共幾筆留言
           ResultSet rs=con.createStatement().executeQuery(sql);
		    while(rs.next())
                {
					
					int x=Integer.parseInt(rs.getString("count"));
					if (session.isNew())
					{
                    x++;
              
					}
					out.print("你是第"+x+"位訪客");
				}
				
					  sql = "UPDATE `counter` SET `count`='"+x+"' where count='"+x+"'";

		  
		  
		   con.close();
      }
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤");
    }
}
catch (ClassNotFoundException err) {
      out.println("class錯誤");
}
		   
%>


</body>
</html>
