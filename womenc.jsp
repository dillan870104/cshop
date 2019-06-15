<%@page contentType="text/html" %>
<%@page import="java.sql.*" %>
<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>C.SHOP服飾精品商城----女裝</title>
  <link rel="stylesheet" type="text/css" href="css01.css">
</head>
<body>
          <%
      Class.forName("com.mysql.jdbc.Driver");
      String login=request.getParameter("id");
      String password=request.getParameter("pwd");
      String url="jdbc:mysql://localhost/myDatabase?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
      String sql="";
      Connection con=DriverManager.getConnection(url,"root","1234");   
      con.createStatement().execute("USE mydatabase");
     %>
<div id="container">
    <div id="headbox1">
      <img class="comp1" src="pic/mark.jpg">
      <p class="user"><a href="shopping_cart.jsp"><img class="icon_cart" src="pic/icon_cart.png" title="購物車"></a>使用者，您好!<br>
        <a href="logout.jsp"> 登出</a>
      </p>
    </div>
    <div class="headbox2">
      
    </div>
    <div id="headbox2">
      <div class="navbar">
      <div class="subnav">
        
        <button class="subnavbtn"><a href="index2.jsp">HOME</a></button>
      </div>
      <div class="subnav">
        <button class="subnavbtn"><a href="menc.jsp">MEN</a></button>
      </div>
      <div class="subnav">
        <button class="subnavbtn"><a href="womenc.jsp">WOMEN</a></button>
      </div>
      <div class="subnav">
        <button class="subnavbtn"><a href="sales.jsp"> ALL</a></button>
      </div>
      <div class="subnav">
        <button class="subnavbtn"><a href="accounts.jsp">ACCOUNT</a></button>
      </div>
      <div class="subnav">
        <button class="subnavbtn"><a href="about_us.jsp">ABOUT US</a> </button>
      </div>

      <div class="subnav">
        <div class="search-container">
          <form action="search.jsp" method="post">
            <input type="text" name="searching" placeholder="搜尋..">
            <button type="submit">搜尋</button>
          </form>
        </div>
      </div>
      </div>


    <div id="sidebar_left"></div>
    <div id="sidebody">
      <form action="1.jsp" method="get" accept-charset="utf-8">
      
      <h1 class="title">襯衫</h1><br><hr>
      <div class="salesbox">
        <a href="1.jsp"><button name="id" value="003"><img src="pic/women/glongt4.jpg" class="salesbox_pic"></button></a>
        <p>牛仔薄衫-女</p>
      </div>
      <div class="salesbox">
        <a href="1.jsp"><button name="id" value="004"><img src="pic/women/glongt5.jfif" class="salesbox_pic"></button></a>
        <p>格子薄衫-女</p>
      </div>
      <div class="salesbox"></div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      <h1 class="title">夏裝</h1><br><hr>
      <div class="salesbox">
        <a href="1.jsp"><button name="id" value="009"><img src="pic/women/gshortt1.jpg" class="salesbox_pic"></button></a>
        <p>卡通印花短T-女</p>
      </div>
      <div class="salesbox">
        <a href="1.jsp"><button name="id" value="010"><img src="pic/women/gshortt2.jfif" class="salesbox_pic"></button></a>
        <p>白素T-女</p>
      </div>
      <div class="salesbox">
        <a href="1.jsp"><button name="id" value="011"><img src="pic/women/gshortt3.jfif" class="salesbox_pic"></button></a>
        <p>粉素T-女</p>
      </div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      <h1 class="title">秋裝</h1><br><hr>
      <div class="salesbox">
        <a href="1.jsp"><button name="id" value="015"><img src="pic/women/glongt1.jfif" class="salesbox_pic"></button></a>
        <p>大學T-女</p>
        </form>
      </div>

      <div class="salesbox">
        <form action="1.jsp" method="get" accept-charset="utf-8">
        <a href="1.jsp"><button name="id" value="016"><img src="pic/women/glongt2.jpg" class="salesbox_pic"></button></a>
        <p>高領毛衣-女</p>
      </div>
      <div class="salesbox">
        <a href="1.jsp"><button name="id" value="017"><img src="pic/women/glongt3.jfif" class="salesbox_pic"></button></a>
        <p>長袖薄T-女</p>
      </div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      <h1 class="title">長褲</h1><br><hr>
      <div class="salesbox">
        <a href="1.jsp"><button name="id" value="020"><img src="pic/women/gpants2.jpg" class="salesbox_pic"></button></a>
        <p>牛仔長褲-女</p>
      </div>
      <div class="salesbox">
        <a href="1.jsp"><button name="id" value="021"><img src="pic/women/gpants3.jfif" class="salesbox_pic"></button></a>
        <p>灰色丹寧褲-女</p>
      </div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      <div class="salesbox"></div>
      <h1 class="title">短褲</h1><br><hr>
      <div class="salesbox">
        <a href="1.jsp"><button name="id" value="023"><img src="pic/women/gpants1.jfif" class="salesbox_pic"></button></a>
        <p>牛仔短褲-女</p>
      </div>
      <div class="salesbox">
        <a href="1.jsp"><button name="id" value="024"><img src="pic/women/gpants4.jfif" class="salesbox_pic"></button></a>
        <p>休閒短褲-(褐)女</p>
      </div>
      <div class="salesbox">
        <a href="1.jsp"><button name="id" value="025"><img src="pic/women/gpants5.jpg" class="salesbox_pic"></button></a>
        <p>女休閒短褲-(白)女</p>
      </form>
      </div>

      <% con.close();  %>  
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