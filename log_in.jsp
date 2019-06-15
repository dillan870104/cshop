<%@page contentType="text/html" %>
<%@page import="java.sql.*" %>
<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>C.SHOP服飾精品商城----會員登入</title>
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

<div class="login">
    <center>
        <form name="login" method="post" action="check.jsp">
          <table>
            <tr><td><center><img src="icon/log.jpg" width="40px" height="40px"></center></td><td><input type="text" name="id" maxlength="25" required class="login_input" placeholder="&nbsp;帳號"></td></tr>
            <tr><td><center><img src="icon/key.jpg" width="41px" height="41px"></center></td><td><input type="password" name="pwd" maxlength="25" required class="login_input" placeholder="&nbsp;密碼"></td><td><input type="submit" name="" value="登入" class="login_btnin"></td></tr>
          </table></form></div>
    </center>
        </div>

    <div id="sidebar_right"></div>
    <div id="clear"></div>
 <pre>
   


   
 </pre>
<footer> 
  <p class="footword"><img class="comp2" src="pic/mark.jpg">
  聯絡我們|關於我們|使用條款<br>
  客服專線:0800-000-123<br>
  地址: 320桃園市中壢區中北路200號
 </p>
</footer>
</body>
</html>