<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>	


<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>搜尋結果</title>
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

<%request.setCharacterEncoding("utf-8");%>
<%

    
    try {
  
           sql="use product";
		   ResultSet rs;
           con.createStatement().execute(sql);
		   
		   sql="select * from menu where name like '%"+request.getParameter("search_name")+"%'";
		   rs=con.createStatement().executeQuery(sql);
		   rs.last();
		   int n=rs.getRow();
		   
		   
//Step 4: 執行 SQL 指令	
       
		rs=con.createStatement().executeQuery(sql);
	
		  	if(n!=0)
			{
		while(rs.next())
		{
			
			out.print("<div id='goods'>");
			out.print("<img src='"+rs.getString(5)+"/"+rs.getString(4)+".jpg'>");
			out.print("<P><br><br>");
			out.print("名稱 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+rs.getString("name")+"<br>");
			out.print("單價 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+rs.getString("price")+"元<br><br><br>");
			%>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" onclick="javascript:location.href='<%=rs.getString("nofile")%>.jsp'" value="點擊觀看" class="search_btn">
			<%
			out.print("</div><br><br>");
		}
		   
			}
			else
			{
%>
				<script language="javascript">
				alert("查無符合商品")
				location.href="javascript:history.go(-1)"
				</script>
<%			}
		   
//out.println(sql);
           con.createStatement().execute(sql);
//Step 6: 關閉連線
	con.close();}
//Step 5: 顯示結果 
          
       
    
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }

		

%>
	
</main><!-- /#main -->

<footer id="footer">
	<div class="container">
		<div class="footer-photo"><img src="img/ph_shop.jpg" alt="店面外觀"></div>
		<section class="footer-info">
			<h2 class="footer-info-title"><img src="img/logo_footer.png" alt="Cafe Leaf"></h2>
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
			<li><a href="https://twitter.com/?lang=zh-tw">Twitter</a></li>
			<li><a href="https://www.facebook.com/Dreamin-cafe-334977830317715/">Facebook</a></li>
			<li><a href="https://www.instagram.com/dreamin_cafe/">Instagram</a></li>
			<li><a href="checkback.jsp">後台管理</a></li>
		</ul>
		<p class="copyright"><small>Copyrights (c) Dreamin' cafe All Rights Reserved.</small></p>
		<p class="pagetop">
			<a href="#header"><img src="img/btn_top.png" alt="回到最上方"></a>
			<a href="search.jsp"><img src="img/btn_search.png" alt="搜尋" class="search-btn"></a>
		</p>
		
	</div><!-- /.container -->
</footer><!-- /#footer -->
</body>
</html>
