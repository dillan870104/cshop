<%@page contentType="text/html" %>
<%@page import="java.sql.*" %>
<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>C.SHOP服飾精品商城----關於我們</title>
  <link rel="stylesheet" type="text/css" href="css01.css">
</head>
<body>
<div id="container">
    <div id="headbox1">
      <img class="comp1" src="pic/mark.jpg">
      <p class="user"><a href="b4shopping_cart.jsp"><img class="icon_cart" src="pic/icon_cart.png" title="購物車"></a>訪客，您好!<br>
        <a href="log_in.jsp"> 登入</a>|<a href="register.jsp">註冊</a>
      </p>
    </div>
    <div class="headbox2">
      
    </div>
    <div id="headbox2">
      <div class="navbar">
      <div class="subnav">
        <button class="subnavbtn"><a href="index.jsp">HOME</a></button>
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
        <button class="subnavbtn"><a href="b4about_us.jsp">ABOUT US</a> </button>
      </div>

      <div class="subnav">
        <div class="search-container">
          <form action="search2.jsp" method="post">
            <input type="text" name="searching" placeholder="搜尋..">
            <button type="submit">搜尋</button>
          </form>
        </div>
      </div>
      </div>

    <div id="sidebar_left"></div>
    <div id="sidebody">
    <div>
      <h1>品牌宗旨</h1>
      <p style="font-size:20px">C.SHOP是以平價衣物為主的購物商城，對於許多的社會新鮮人或學生這是一個非常好的購物網站，我們提供適合各種場合的商品給我們的顧客參考
      ，讓我們的顧客不管在各種場合都能光鮮亮麗，奪得大眾目光。</p>
      <h1>顧客福利</h1>
      <p style="font-size:20px">非常感謝您蒞臨本網站參考我們的商品，凡在C.SHOP裡購買之產品均有7天之鑑賞期，如對於商品有不滿意非常歡迎進行退換貨的程序。
      若對於我們任何的服務感到不滿意非常歡迎指教，C.SHOP團隊全員都會改進，相信我們也會越來越完美。</p>
      <h1>未來發展</h1>
      <p style="font-size:20px">在電子商務高競爭的時代，我們的產品不只擁有低廉的價格、高品質等競爭優勢，更提供優良的客戶服務，目前規模雖然不大，但相信有我們團隊的努力
      ，在未來的不久C.SHOP，必定能在這高競爭的電子商務領域佔有一席之地。</p>
      <h1>社會福利</h1>
       <p style="font-size:20px">感謝各位顧客對我們的愛戴，我們C.SHOP團隊取之於社會、用之於社會更要回饋於社會，因此每個月我們會固定捐出10%的利潤
       於兒童社福機構，以表我們團隊對於社會的感激。</p>
	   	   
    </div>













    </div>
    <div id="sidebar_right"></div>
    <div id="clear"></div>
<footer> 
  <p class="footword"><img class="comp2" src="pic/mark.jpg">
  聯絡我們|關於我們|使用條款<br>
  客服專線:0800-000-123<br>
  地址: 320桃園市中壢區中北路200號
 </p>
</footer>
</body>
</html>