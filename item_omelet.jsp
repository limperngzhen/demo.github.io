<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>	

	
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>後台</title>
<meta name="description" content="">
<meta name="keywords" content="">

<meta name="viewport" content="width=device-width,initial-scale=1.0">
<meta name="format-detection" content="telephone=no">

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
		<li id="gnav-li"><a href="mem_center2.jsp">管理會員</a>
		<ul class="a">
			<li id="animate"><a href="mem_center2.jsp">查看會員資料</a></li>
			<li id="animate"><a href="mem_del.jsp">刪除會員</a></li>
		</ul>
		</li>
		<li id="gnav-li"><a href="shopping_cart2.jsp">查看訂單</a>
		<ul class="a">
			<li id="animate"><a href="shopping_cart2.jsp">所有訂單</a></li>
			<li id="animate"><a href="orderdel.jsp">刪除訂單</a></li>
		</ul>
		</li>
		<li id="gnav-li"><a href="itemlist.jsp">商品管理</a>
		<ul class="a">
			<li id="animate"><a href="itemlist.jsp">查看商品</a></li>
			<li id="animate"><a href="additem.jsp">新增商品</a></li>
			<li id="animate"><a href="updateitem.jsp">修改商品</a></li>
			<li id="animate"><a href="delitem.jsp">刪除商品</a></li>
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

<section id="menu">

		<h2 class="heading">蛋餅 </h2>
		<ul class="menu-list">
	
	<%
	
	try {
		
	
  		   
           sql="use product";
		   ResultSet rs;
           con.createStatement().execute(sql);
		  
		   sql="select * from product.member ";
		   rs=con.createStatement().executeQuery(sql);
		   rs.last();
	
			
//////////////////////////////////////		 
		
//Step 2: 建立連線 	
      
//Step 3: 選擇資料庫   
           
        
		   sql="select * from omelet where id";
		   rs=con.createStatement().executeQuery(sql);
		   rs.last();
		   

//Step 4: 執行 SQL 指令	
       
		rs=con.createStatement().executeQuery(sql);
			  
   			
		while(rs.next())
		  {  
            
			out.print("<li>");
			out.print("<img src='"+rs.getString(5)+"/"+rs.getString(4)+".jpg'>");
			out.print("<p class='menu-text'>"+rs.getString("name")+"<br><b>"+rs.getString("price")+"元</b><br><b>庫存數量 :"+rs.getString("ll")+"&nbsp;</b></p>");
			//out.print("<a href='"+rs.getString("nofile")+".jsp'><input type='button' value='修改商品'></a>");
			out.print("<li>");
		
		  }   			
		
	        
		
    con.createStatement().execute(sql);
	
	con.close();	
	}	
	
	 catch (SQLException sExec)
	 {
           out.println("SQL錯誤"+sExec.toString());
    }
	%>


</ul>
	</section><!-- /#menu -->

	
</main><!-- /#main -->

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



