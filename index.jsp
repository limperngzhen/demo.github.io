<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>	

<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>Ma Ci So Restaurant</title>

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
<% 
 //session.setAttribute("id",null);//帳號
  session.setAttribute("ids","no");
  
%>
<header id="header">
	<div class="container">
		<h1 class="top-logo"><a href="index.jsp"><img src="img/logo.png" alt="美味早餐 Ma Ci So Restaurant"></a></h1>
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
	<div id="slider">
		<div class="cover1"></div>
		<div class="cover2"></div>
		<div class="cover3"></div>
	</div>

	<div id="intro" class="full">
		<div class="intro-text">
			<p><br><br>我們 Ma Ci So Restaurant是以人的夢想為起點<br>
			使用天馬行空的想法，推出你 / 妳意想不到的早午餐。<br>
			</p>
		</div><!-- /.intro-text -->
		<div class="intro-login">
		<form method="post" action="check.jsp">
			<table width="60px">
				<tr>
					<td><br>帳號: <input type="text" name="id" required></td>
				</tr>
				<tr>
					<td><br>密碼: <input type="password" name="pwd" required></td>
				</tr>
				<tr><td><br>
				<input type="submit" value="登入" class="btn">
				<a href="register.jsp"><input type="button" value="註冊"  class="btn"></a></td>
			</table>
		</form>
		</div>
	</div><!-- /#intro -->
	
	<section id="menu">
		<h2 class="heading">熱門餐點 </h2>
		<ul class="menu-list">
				
		<%
		
//Step 1: 載入資料庫驅動程式 
        try {
//Step 2: 建立連線 	
      
//Step 3: 選擇資料庫   
           sql="use product";
		   ResultSet rs;
           con.createStatement().execute(sql);
		  
		   sql="select * from product.hot where id";
		   rs=con.createStatement().executeQuery(sql);
		   rs.last();
		   int n=rs.getRow();

//Step 4: 執行 SQL 指令	
       
		rs=con.createStatement().executeQuery(sql);
	
		while(rs.next())
		{			
		         
            out.print("<li>");
			out.print("<img src='"+rs.getString(5)+"/"+rs.getString(4)+".jpg'>");
			out.print("<p class='menu-text'>"+rs.getString("name")+"<br><b>"+rs.getString("price")+"元</b></p>");
			out.print("<a href="+rs.getString("nofile")+".jsp><input type='button' value='觀看'></a>");
			out.print("</li>");
             			
		}
	
           con.createStatement().execute(sql);
//Step 6: 關閉連線
	}
//Step 5: 顯示結果 
          
       
    
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }

		
%>	
			<!--<li>
				<img src="img/item/1.jpg" alt="">
				<p class="menu-text">玉米培根蛋餅<br><b>70元</b></p>
				<input type="button" value="add to cart">
			</li>
			<li>
				<img src="img/item/17.jpg" alt="">
				<p class="menu-text">薯餅滿福堡<br><b>50元</b></p>
				<input type="button" value="add to cart">
			</li>
			<li>
				<img src="img/item/12.jpg" alt="">
				<p class="menu-text">奶茶<br><b>50元</b></p>
				<input type="button" value="add to cart">
			</li>
			<li>
				<img src="img/item/7.jpg" alt="">
				<p class="menu-text">異國蔥抓餅<br><b>50元</b></p>
				<input type="button" value="add to cart">
			</li>
			<li>
				<img src="img/item/18.jpg" alt="">
				<p class="menu-text">豬肉滿福堡<br><b>70元</b></p>
				<input type="button" value="add to cart">
			</li>
			<li>
				<img src="img/item/5.jpg" alt="">
				<p class="menu-text">蔥油蛋餅<br><b>60元</b></p>
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
				<dt>【瀏覽人數】</dt>
				<%

//Step 1: 載入資料庫驅動程式 
    
    try {

//Step 3: 選擇資料庫   
           sql="use product";
           con.createStatement().execute(sql);
//Step 4: 執行 SQL 指令, 若要操作記錄集, 需使用executeQuery, 才能傳回ResultSet	
           sql="select * from product.counter"; //算出共幾筆留言
           ResultSet rs=con.createStatement().executeQuery(sql);
		  //  rs.next();
			
			//Strings x=rs.getString("count");
			//int x1=Integer.parseInt(x);
			
			if(rs.next())
                {
					String x=rs.getString("count");
					int x1=Integer.parseInt(x);					
				
				if (session.isNew())
					{
					
						x1++;
						x=String.valueOf(x1);
              		}
					out.print(x1);
				
					  sql = "UPDATE `counter` SET `count`='"+x+"' ";
					  con.createStatement().executeUpdate(sql);
				}
 
		   con.close();
      
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }


		   
%>
				
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



