<%@page contentType="text/html" %>
<%@page import="java.sql.*" %>
<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>C.SHOP服飾精品商城</title>
	<link rel="stylesheet" type="text/css" href="css01.css">
</head>
<body>
<div id="container">
    <div id="headbox1">
    	<img class="comp1" src="pic/mark.jpg">
      <p class="user"><a href="b4shopping_cart.jsp"><img class="icon_cart" src="pic/icon_cart.png" title="購物車"></a>訪客，您好!<br>
        <a href="log_in.jsp"> 登入</a>|<a href="register.jsp"> 註冊</a>
      </p>
    </div>
    <div class="headbox2">
      
    </div>
    <div id="headbox2">
    	<div class="navbar">
			<div class="subnav">
        <button class="subnavbtn"><a href="b4logindex.jsp">HOME</a></button>
      </div>
      <div class="subnav">
        <button class="subnavbtn"><a href="b4menc.jsp">MEN</a></button>
      </div>
			<div class="subnav">
				<button class="subnavbtn"><a href="b4womenc.jsp">WOMEN</a></button>
			</div>
      <div class="subnav">
        <button class="subnavbtn"><a href="b4sales.jsp"> ALL</a></button>
      </div>
      <div class="subnav">
        <button class="subnavbtn"><a href="b4about_us.jsp">ABOUT US</a></button>
      </div>
      <div class="subnav">
        <div class="search-container">
          <form action="/action_page.php">
            <input type="text" placeholder="搜尋..">
            <button type="submit">搜尋</button>
          </form>
        </div>
    	</div>
      </div>
	<!-- 幻燈片 -->
	<div class="slideshow-container">

  		<div class="mySlides fade">
    		<img src="pic/ad1.jpg" style="width:100%;height: 400px">
  		</div>

  		<div class="mySlides fade">
    		<img src="pic/ad2.jpg" style="width:100%;height: 400px">
  		</div>

  		<div class="mySlides fade">
    		<img src="pic/ad3.jpg" style="width:100%;height: 400px">
  		</div>

  		<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  		<a class="next" onclick="plusSlides(1)">&#10095;</a>
	</div>

  
	<div style="text-align:center">
		<span class="dot" onclick="currentSlide(1)"></span> 
		<span class="dot" onclick="currentSlide(2)"></span> 
		<span class="dot" onclick="currentSlide(3)"></span> 
	</div>
    <script src="slideshow.js"></script>
    </div>

    <!--熱門商品-->
    <div id="sidebar_left"></div>
    <div id="sidebody">
      <h1 class="title">熱門商品</h1><br>
      <div class="box">
        <a href="b4 1.jsp"><img src="pic/men/longt3.jfif" class="box_pic"></a>
        <p>漸層藍襯衫</p>
      </div>
      <div class="box">
        <a href="b4 17.jsp"><img src="pic/women/glongt3.jfif" class="box_pic"></a>
        <p>長袖薄T-女</p>
      </div>
      <div class="box">
        <a href="b4 19.jsp"><img src="pic/men/pants3.jfif" class="box_pic"></a>
        <p>白棉褲</p>
      </div>
      <div class="box">
        <a href="b4 20.jsp"><img src="pic/women/gpants2.jpg" class="box_pic"></a>
        <p>牛仔長褲-女</p>
      </div>
      <div class="box">
        <a href="b4 8.jsp"><img src="pic/men/shortt2.jfif" class="box_pic"></a>
        <p>印花橘短T</p>
      </div><br>
    
    <!--精品推薦-->
      <h1 class="title">精品推薦</h1><br>
      <div class="box">
        <a href="b4 15.jsp"><img src="pic/women/glongt1.jfif" class="box_pic"></a>
        <p>大學T-女</p>
      </div>
      <div class="box">
        <a href="b4 14.jsp"><img src="pic/men/longt2.jfif" class="box_pic"></a>
        <p>格子毛衣</p>
      </div>
      <div class="box">
        <a href="b4 18.jsp"><img src="pic/men/pants1.jfif" class="box_pic"></a>
        <p>牛仔長褲</p>
      </div>
      <div class="box">
        <a href="b4 21.jsp"><img src="pic/women/gpants4.jfif" class="box_pic"></a>
        <p>灰色丹寧褲-女</p>
      </div>
      <div class="box">
        <a href="b4 7.jsp"><img src="pic/men/shortt1.jfif" class="box_pic"></a>
        <p>印花白短T</p>
      </div><br>
<!--促銷商品-->
      <h1 class="title">促銷商品</h1><br>
      <div class="box">
        <a href="b4 2.jsp"><img src="pic/men/longt4.jfif" class="box_pic"></a>
        <p>圓領襯衫</p>
      </div>
      <div class="box">
        <a href="b4 9.jsp"><img src="pic/women/gshortt1.jpg" class="box_pic"></a>
        <p>卡通印花短T-女</p>
      </div>
      <div class="box">
        <a href="b4 12.jsp"><img src="pic/men/longt1.jpg" class="box_pic"></a>
        <p>白大學T</p>
      </div>
      <div class="box">
        <a href="b4 16.jsp"><img src="pic/women/glongt2.jpg" class="box_pic"></a>
        <p>高領毛衣-女</p>
      </div>
      <div class="box">
        <a href="b4 21.jsp"><img src="pic/women/gpants3.jfif" class="box_pic"></a>
        <p>灰色丹寧褲-女</p>
      </div>
    
    </div>
    <div id="sidebar_right"></div>
    <div id="clear"></div>

</div>
<footer> 
  <p class="footword"><img class="comp2" src="pic/mark.jpg">
  聯絡我們|關於我們|使用條款<br>
  客服專線:0800-000-123<br>
  地址: 320桃園市中壢區中北路200號
 </p>
</footer>
</body>
</html>