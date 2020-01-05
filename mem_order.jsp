<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>	

<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>訂單</title>

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
	<h2 class="heading">訂購記錄</h2>
	<div id="menu">
		<div class="cart">
		<form method="post" action="">
			<table>
				<tr>
					<th>商品圖</th>
					<th>商品名</th>
					<th>數量</th>
					<th>價格</th>
				</tr>
            				<%
		
		
		
//Step 1: 載入資料庫驅動程式 
        try {
//Step 2: 建立連線 	
      
//Step 3: 選擇資料庫   
           sql="use product";
		   ResultSet rs;
		   if(session.getAttribute("id") != null )
			{
           con.createStatement().execute(sql);
		  
		   sql="select * from orders where no";
		   rs=con.createStatement().executeQuery(sql);
		   rs.last();
		   int n=rs.getRow();
		   sql="select * from orders where id='"+session.getAttribute("id")+"'";
		   int aa;
		  int iii=0;
		  
//Step 4: 執行 SQL 指令	
       
		rs=con.createStatement().executeQuery(sql);
		
		while(rs.next())
		{		
	   aa=Integer.parseInt(rs.getString("total_price"));

            out.print("<table>");	
		    out.print("<tr>");
		  //out.print("<td>"+rs.getString("no")+"</td>");
			out.print("<td><img src='"+rs.getString("img")+"/"+rs.getString("nofile")+".jpg"+"'></td>");
			out.print("<td>"+rs.getString("name")+"</td>");
			out.print("<td>"+rs.getString("number")+"</td>");
			out.print("<td>"+rs.getString("total_price")+"</td>");
			out.print("	</tr></table>");
			iii=iii+aa;	 
			
		
		%>
		
		<div class="order">
				<p><br><br><br></p><br>
				
				<%
				sql="use product";
				ResultSet rs1;
				con.createStatement().execute(sql);
				sql="select * from orders where id='"+session.getAttribute("id")+"'";
				rs1=con.createStatement().executeQuery(sql);
				rs1.next();
				%>
				
				<p>取貨人 :&nbsp;&nbsp;&nbsp;&nbsp;<%=rs1.getString("buyer")%>
				</p><br>
				<p>付款方式 :&nbsp;&nbsp;&nbsp;&nbsp;<%=rs1.getString("payway")%>
				</p><br>
				<p>地址 :&nbsp;&nbsp;&nbsp;&nbsp;<%=rs1.getString("address")%>
				</p><br>
			</div>
		</form>  
		
		
		<div class="order">
				<p><br><br><br>總價 :&nbsp;&nbsp;&nbsp;<%out.print(iii);%></p><br>
				
				
				
				
			
			</div>
		</form>
		
		
		
		<%
		
		}
		con.createStatement().execute(sql);
//Step 6: 關閉連線
	con.close();
//Step 5: 顯示結果 
        
			}
		  else
			{
			 out.print("<script language=\'javascript\'>");
			out.print("alert(\'請先登入\');");
			out.print("</script>");
			out.print("<meta http-equiv='refresh' content='0.1 url=index.jsp'>");
			
			}
		}
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
		
	%>
				
				
				
		</form>
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