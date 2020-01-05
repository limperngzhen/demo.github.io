<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>	

<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>會員中心</title>

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
			<li id="animate"><a href="mem_update.jsp">修改會員資料</a></li>
			<li id="animate"><a href="mem_order.jsp">我的訂購紀錄</a></li>
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
           con.createStatement().execute(sql);
		
		   if(session.getAttribute("id") != null )
		   {

		   String id="", pwd="",name="",sex="",tel="",address="",email="";
		   
		   ResultSet rs;
           con.createStatement().execute(sql);
		  
		   sql="select * from product.member";
		   rs=con.createStatement().executeQuery(sql);
		   rs.last();
		   int n=rs.getRow();

	
       
		rs=con.createStatement().executeQuery(sql);
	
	

    sql = "SELECT * FROM product.member WHERE id='" +session.getAttribute("id")+"';"; 
	ResultSet paperrs1 =con.createStatement().executeQuery(sql);

	//讀出id, pwd當成使用者要更改時的內定值
	while(paperrs1.next()){
	//  name=paperrs1.getString(1);
	//  id=paperrs1.getString("id");
	//	pwd=paperrs1.getString("pwd");
	    name=paperrs1.getString("name");
		sex=paperrs1.getString("sex");
		tel=paperrs1.getString("tel");
		address=paperrs1.getString("address");
		email=paperrs1.getString("email");
		
	}
          out.print("<br><br>哈囉，"+name+"，以下是您的會員資料：<br><br>");
          out.print("<tr><th>姓名 :&nbsp;</th><td>"+name+"</td></tr><br><br>");
		  out.print("<tr><th>性別 :&nbsp;</th><td>"+sex+"</td></tr><br><br>");
		  out.print("<tr><th>電話 :&nbsp;</th><td>"+tel+"</td></tr><br><br>");
		  out.print("<tr><th>地址 :&nbsp;</th><td>"+address+"</td></tr><br><br>");
		  out.print("<tr><th>信箱 :&nbsp;</th><td>"+email+"</td></tr><br>");
	      out.print("<br><br><a href='logout.jsp'>登出</a>");
	
	
		   
	 }
	 else
		{  
	
			out.print("<script language=\'javascript\'>");
			out.print("alert(\'請先登入\');");
			out.print("</script>");
			out.print("<meta http-equiv='refresh' content='0.1 url=index.jsp'>");
	
	
		/*	<script language="javascript">
			alert("請先登入")
			location.href="javascript:history.go(-1)"
			</script>
			
		*/	
	}
	 
	 
//out.println(sql);
           con.createStatement().execute(sql);
//Step 6: 關閉連線
	con.close();}
//Step 5: 顯示結果 
          
       
    
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
	
	
	
	/*

		
			<table class="member-table">
				<tr>
					<td>姓名 :</td>
					<td>=name/td>
				</tr>
				<tr>
					<td>性別 :</td>
					<td>=sex</td>
				</tr>
				<tr>
					<td>電話 :</td>
					<td>=tel</td>
				</tr>
				<tr>
					<td>地址 :</td>
					<td>=address</td>
				</tr>
				<tr>
					<td>信箱 :</td>
					<td>=email</td>
				</tr>
			</table>
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
