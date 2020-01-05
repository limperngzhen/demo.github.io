<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>	

<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>留言板</title>

<!--icon -->
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<link rel="icon" sizes="192x192" href="apple-touch-icon.png">

<!-- stylesheets -->
<link rel="stylesheet" href="css/base.css" media="all">

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
<script type="text/javascript" src="http://malsup.github.com/jquery.cycle.all.js"></script>
<script src="css/base.js"></script>

</head>
<body>
<header id="header">
	<div class="container">
		<h1 class="top-logo">
		<%if(session.getAttribute("id") != null )
		{%><a href="index2.jsp"><img src="img/logo.png" alt="美味早餐 Ma Ci So Restaurant"></a>
		<%
		}
		else
		{%>
			<a href="index.jsp"><img src="img/logo.png" alt="美味早餐 Ma Ci So Restaurant"></a>
		<%}%>
		</h1>
	</div>
</header><!-- /#header -->

<nav id="gnav">
	<ul id="ultitle">
		<li id="gnav-li"><a href="mem_center.jsp">會員</a>
		<ul class="a">
			<li id="animate"><a href="mem_center.jsp">會員中心</a></li>
			<li id="animate"><a href="mem_order.jsp">訂購紀錄</a></li>
		</ul>
		</li>
		<li id="gnav-li"><a href="shopping_cart.jsp">購物車</a>
		<ul class="a">
			<li id="animate"><a href="shopping_cart.jsp">查看購物車</a></li>
			
		</ul>
		</li>
		<li id="gnav-li"><a href="menu.jsp">菜單</a>
		<ul class="a">
			<li id="animate"><a href="quiche.jsp">蛋餅</a></li>
			<li id="animate"><a href="burger.jsp">漢堡</a></li>
			<li id="animate"><a href="other.jsp">其他</a></li>
			
		</ul>
		</li>
		<li id="gnav-li"><a href="more.jsp">更多</a>
		<ul class="a">
			<li id="animate"><a href="about_us.jsp">關於我們</a></li>
			<li id="animate"><a href="guestboard.jsp">留言板</a></li>
		</ul>
		</li>
	</ul>
</nav><!-- /#gnav -->

<main id="main" class="container">
	<h2 class="heading">留言板 </h2><br>
	<div id="guestboard">	
<%

//Step 1: 載入資料庫驅動程式 
    
    try {
//Step 2: 建立連線 	
      
//Step 3: 選擇資料庫   
           sql="use product";
		   con.createStatement().execute(sql);
//Step 4: 執行 SQL 指令, 若要操作記錄集, 需使用executeQuery, 才能傳回ResultSet	
           sql="select * from guestboard"; //算出共幾筆留言
           ResultSet rs=con.createStatement().executeQuery(sql);

           //先移到檔尾, getRow()後, 就可知道共有幾筆記錄
           rs.last();
           int total_content=rs.getRow();
           
           //每頁顯示5筆, 算出共幾頁
           int page_num=(int)Math.ceil((double)total_content/5.0); //無條件進位
		   if (page_num==0) //無留言時將頁數指標訂為1
		       page_num=1;
           //使用超連結方式, 呼叫自己, 使用get方式傳遞參數(變數名稱為page)  
	             	
		   
           //讀取page變數
           String page_string = request.getParameter("page");
           if (page_string == null) 
               page_string = "1";  //無留言時將頁數指標訂為1        
          Integer current_page=Integer.valueOf(page_string);//將page_string轉成整數
         //  Integer current_page=Integer.valueOf(request.getParameter("page"));
       		  
		    //顯示總頁數
		   
		 		//顯示當前頁數  
		   
	       //計算開始記錄位置   
//Step 5: 顯示結果 
           int start_record=(current_page-1)*5;
           //遞減排序, 讓最新的資料排在最前面
           sql="SELECT * FROM guestboard ORDER BY no DESC LIMIT ";//LIMIT是限制傳回筆數
           sql+=start_record+",5";
           //上述語法解讀如下:
           // current_page... select * from guestbook order by no desc limit
           //      current_page=1: select * from guestbook order by no desc limit 0, 5 //從第0筆顯示5筆
           //      current_page=2: select * from guestbook order by no desc limit 5, 5 //從第5筆顯示5筆
           //      current_page=3: select * from guestbook order by no desc limit 10, 5//從第10筆顯示5筆

           rs=con.createStatement().executeQuery(sql);
	
	         
	/////////////////////////////
		while(rs.next())
		{			
		  out.print("<table>");
		  out.print("<tr><th>筆數 :&nbsp;</th><td>"+"第"+rs.getString("no")+"筆留言"+"</td></tr>");
		  out.print("<tr><th>姓名 :&nbsp;</th><td>"+rs.getString("name")+"</td></tr>");
		  out.print("<tr><th>帳號 :&nbsp;</th><td>"+rs.getString("id")+"</td></tr>");
		  out.print("<tr><th>主旨 :&nbsp;</th><td>"+rs.getString("mean")+"</td></tr>");
		  out.print("<tr><th>內容 :&nbsp;</th><td>"+rs.getString("aa")+"</td></tr>");
		  out.print("</table>");
             			
		}
		out.print("<hr><div style='margin-bottom:20px;letter-spacing:3px;text-align:center;'>");
		out.println("共"+total_content+"筆留言<p>");
		out.println("請選擇頁數");
		for(int i=1;i<=page_num;i++) //使用get傳輸方式,建立1,2,...頁超連結
              {				  
			   out.print("<a href='guestboard.jsp?page="+i+"'>"+i+"</a>&nbsp;"); //&nbsp;html的空白
			  }
		out.println("<p>");
		out.print("  共"+page_num+"頁，");
		out.print("目前在第"+current_page+"頁"+"<p>");
		out.println("<hr>");  
          out.println("<p>");  		  
		  
		   
		   if(current_page!=1)
		       out.print("<a href=guestboard.jsp?page=1>"+"第一頁"+"</a>"+"&nbsp");
		   
		   if(current_page>1)
			    out.print("<a href=guestboard.jsp?page="+(current_page-1)+">"+"上一頁"+"</a>"+"&nbsp");
		   if(current_page<page_num)
		   {
			   out.print("<a href=guestboard.jsp?page="+(current_page+1)+">"+"下一頁"+"</a>"+"&nbsp");
			   out.print("<a href=guestboard.jsp?page="+page_num+">"+"最後一頁"+"</a>"+"&nbsp");
	  	   }
		    out.println("<p></div>");
		
		
		   
//out.println(sql);
           
//Step 6: 關閉連線
	con.close();}
//Step 5: 顯示結果 
          
       
    
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }


		
		%>	
		  <!--<table>
		  <tr><th>筆數 :&nbsp;</th><td>第筆留言</td></tr>
		  <tr><th>姓名 :&nbsp;</th><td>name</td></tr>
		  <tr><th>帳號 :&nbsp;</th><td>id</td></tr>
		  <tr><th>主旨 :&nbsp;</th><td>mean</td></tr>
		  <tr><th>內容 :&nbsp;</th><td>aa</td></tr>
		  </table>
		<hr><div style='margin-bottom:20px;letter-spacing:3px;text-align:center;'>
		共_筆留言<p>
		請選擇頁數		  
			   <a href='guestboard.jsp?page="+i+"'></a>&nbsp;&nbsp;
		<p>
		共_頁
		目前在第__頁<p>
		<hr>
          <p> 		  
		    	<a href=guestboard.jsp?page=1>第一頁</a>
			    <a href=guestboard.jsp?page="+(current_page-1)+">上一頁</a>
				<a href=guestboard.jsp?page="+(current_page+1)+">下一頁</a>
				<a href=guestboard.jsp?page="+page_num+">最後一頁</a>
				<p></div>
		
		
		-->
		<div style="margin-top:-7px;text-align:center;">
			<a href="new_message.jsp"><input type="button" class="search_btn" value="我要留言"></a>
		</div>
	</div>
	
</main><!-- /#main -->
<br>
<div class="heading"></div>
<footer id="footer">
	<div class="container">
		<div class="footer-photo"><img src="img/ph_shop.jpg" alt="店面外觀"></div>
		<section class="footer-info">
			<h2 class="footer-info-title"><img src="img/logo_footer.png" ></h2>
			<dl class="footer-info-list">
				<dt>【店　　名】</dt>
				<dd>美味早餐 [中原店]</dd>
				<dt>【電話號碼】</dt>
				<dd>02-2384567</dd>
				<dt>【地　　址】</dt>
				<dd>桃園市中壢區中北路200號</dd>
				<dt>【信　　箱】</dt>
				<dd>iamtest1@cycu.edu.tw</dd>
			</dl>
		</section>
		<ul class="sns">
			<li><a href="#">Twitter</a></li>
			<li><a href="#">Facebook</a></li>
			<li><a href="#">Instagram</a></li>
			<li><a href="checkback.jsp">後台管理</a></li>
		</ul>
		<p class="copyright"><small>Copyrights (c) Dreamin' cafe All Rights Reserved.</small></p>
		<p class="pagetop"><a href="#header"><img src="img/btn_top.png" alt="回到最上方"></a>
		<a href="search.jsp"><img src="img/btn_search.png" alt="搜尋" class="search-btn"></a></p>
	</div><!-- /.container -->
</footer><!-- /#footer -->
</body>
</html>
