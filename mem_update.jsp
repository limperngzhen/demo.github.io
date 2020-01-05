<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>		


<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>修改會員資料</title>
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

	<div id="menu">
		<div class="member-photo">
			<img src="img/ph_staff.jpg" alt="會員大頭貼">
		</div>
		<div class="member-msg">
		
			
		<%


    
    try {
		  
		  sql="use product";
		   ResultSet rs;
           con.createStatement().execute(sql);
		  
		   sql="select * from product.member where id='"+session.getAttribute("id")+"'";
		   
		   rs=con.createStatement().executeQuery(sql);
		   rs.last();
		   
		   
         
		 
				
		%>		
	
			<form method="post" action="mem_update1.jsp">
			<table class="member-table">
				<tr>
					<td>姓名 : (舊)</td>
					<td><%=rs.getString("name")%></td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;姓名 : (新)</td>
					<td><input type="text" name="new_name" value="<%=rs.getString("name")%>"></td>
				</tr>
				<tr>
					<td>性別 :</td>
					<td><%=rs.getString("sex")%></td>
				</tr>
				<tr>
					<td>電話 : (舊)</td>
					<td><%=rs.getString("tel")%></td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;電話 : (新)</td>
					<td><input type="text" name="new_phone" value="<%=rs.getString("tel")%>"></td>
				</tr>
				<tr>
					<td>地址 : (舊)</td>
					<td><%=rs.getString("address")%></td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;地址 : (新)</td>
					<td><input type="text" name="new_address" value="<%=rs.getString("address")%>"></td>
				</tr>
				<tr>
					<td>信箱 : (舊)</td>
					<td><%=rs.getString("email")%></td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;信箱 : (新)</td>
					<td><input type="email" name="new_email" value="<%=rs.getString("email")%>"></td>
				</tr>
				<tr>
					<td><input type="submit" value="確認送出" class="search_btn"></td>
					<td><input type="reset" value="重新填寫" class="search_btn"></td>
				</tr>
			</table>
		</form>
	<%
	
	
	 
	
	 

           con.createStatement().execute(sql);
//Step 6: 關閉連線
	con.close();}
//Step 5: 顯示結果 
          
       
    
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
	
	
			
			
		
	/*	
		
		<form method="post" action="addup.jsp">
			<table class="member-table">
				<tr>
					<td>姓名 : (舊)</td>
					<td>Jeff</td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;姓名 : (新)</td>
					<td><input type="text" name="new_name"></td>
				</tr>
				<tr>
					<td>性別 :</td>
					<td>男</td>
				</tr>
				<tr>
					<td>電話 : (舊)</td>
					<td>098877654321</td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;電話 : (新)</td>
					<td><input type="text" name="new_phone"></td>
				</tr>
				<tr>
					<td>地址 : (舊)</td>
					<td>屏東縣恆春鎮恆春南路六段426號</td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;地址 : (新)</td>
					<td><input type="text" name="new_address"></td>
				</tr>
				<tr>
					<td>信箱 : (舊)</td>
					<td>iamnottest@cycu.edu.tw</td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;信箱 : (新)</td>
					<td><input type="text" name="new_email"></td>
				</tr>
				<tr>
					<td><input type="submit" value="確認送出" class="search_btn"></td>
					<td><input type="reset" value="重新填寫" class="search_btn"></td>
				</tr>
			</table>
		</form>
		*/
		
		%>
		</div>
	</div>

	
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
