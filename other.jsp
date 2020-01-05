<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>	

<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>其他</title>

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

		<section id="menu">
				<h2 class="heading">其他 </h2>
				<ul class="menu-list">
				<%
		
		
//Step 1: 載入資料庫驅動程式 
    
    try {
//Step 2: 建立連線 	
      
//Step 3: 選擇資料庫   
           sql="use product";
		   ResultSet rs;
           con.createStatement().execute(sql);
		  
		   sql="select * from others where id";
		   rs=con.createStatement().executeQuery(sql);
		   rs.last();
		   int n=rs.getRow();

		   
//Step 4: 執行 SQL 指令	
       
		rs=con.createStatement().executeQuery(sql);
	
		while(rs.next())
		{			
		         
            out.print("<li>");
			out.print("<img src='"+rs.getString(5)+"/"+rs.getString(4)+".jpg'");
			out.print("<p class='menu-text'>"+rs.getString("name")+"<br><b>"+rs.getString("price")+"元</b><br><b>庫存數量 :"+rs.getString("ll")+"&nbsp;</b></p>");
			out.print("<a href='"+rs.getString("nofile")+".jsp'><input type='button' value='觀看'></a>");
			out.print("</li>");
		}
		   
		   
		   
//out.println(sql);
           con.createStatement().execute(sql);
//Step 6: 關閉連線
	con.close();}
//Step 5: 顯示結果 
          
       
    
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }

		
	%>
					<!--<li>
						<img src="img/item/7.jpg" alt="">
						<p class="menu-text">異國蔥抓餅<br><b>50元</b></p>
						<input type="button" value="add to cart">
					</li>
					<li>
						<img src="img/item/8.jpg" alt="">
						<p class="menu-text">雙層肉蛋堡<br><b>100元</b></p>
						<input type="button" value="add to cart">
					</li>
					<li>
						<img src="img/item/9.jpg" alt="">
						<p class="menu-text">雞塊<br><b>60元</b></p>
						<input type="button" value="add to cart">
					</li>
					<li>
						<img src="img/item/10.jpg" alt="">
						<p class="menu-text">歐洲紅茶<br><b>30元</b></p>
						<input type="button" value="add to cart">
					</li>
					<li>
						<img src="img/item/11.jpg" alt="">
						<p class="menu-text">清香綠茶<br><b>40元</b></p>
						<input type="button" value="add to cart">
					</li>
					<li>
						<img src="img/item/12.jpg" alt="">
						<p class="menu-text">奶茶<br><b>50元</b></p>
						<input type="button" value="add to cart">
					</li>-->
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
