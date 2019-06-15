<%@page contentType="text/html" %>
<%@page import="java.sql.*" %>
<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>C.SHOP服飾精品商城----個人帳戶</title>
  <link rel="stylesheet" type="text/css" href="css01.css">
</head>
<body>
<div id="container">
    <div id="headbox1">
      <img class="comp1" src="pic/mark.jpg">
      <p class="user"><a href="adshopping_cart.jsp"><img class="icon_cart" src="pic/icon_cart.png" title="購物車"></a>管理者，您好!<br>
        <a href="logout.jsp"> 登出</a>
      </p>
    </div>
    <div class="headbox2">
      
    </div>
    <div id="headbox2">
      <div class="navbar">
      <div class="subnav">
        <button class="subnavbtn"><a href="adhomepage.jsp">HOME</a></button>
      </div>
      <div class="subnav">
        <button class="subnavbtn"><a href="admenc.jsp">MEN</a></button>
      </div>
      <div class="subnav">
        <button class="subnavbtn"><a href="adwomenc.jsp">WOMEN</a></button>
      </div>
      <div class="subnav">
        <button class="subnavbtn"><a href="adsales.jsp"> ALL</a></button>
      </div>
      <div class="subnav">
        <button class="subnavbtn"><a href="adaccounts.jsp">ACCOUNT</a></button>
      </div>
      <div class="subnav">
        <button class="subnavbtn"><a href="adabout_us.jsp">ABOUT US</a></button>
      </div>
      <div class="subnav">
        <button class="subnavbtn"><a href="admin.jsp">ADMINISTRATOR</a></button>
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
      <div class="mem">
        <center>
        <table>
          <tr>
            <th>姓名</th>
            <td>沈中</td>
          </tr>
          <tr>
            <th>性別</th>
            <td>男</td>
          </tr>
          <tr>
            <th>生日</th>
            <td>1998年1月3日</td>
          </tr>
          <tr>
            <th>帳號</th>
            <td>apple</td>
          </tr>
          <tr>
            <th>密碼</th>
            <td>12345</td>
          </tr>
          <tr>
            <th>信箱</th>
            <td>dillan210168@gmail.com</td>
          </tr>
          <tr>
            <th>地址</th>
            <td>中原大學</td>
          </tr>
          <tr>
            <th>電話</th>
            <td>0987654321</td>
          </tr>
          <tr>
            <td colspan="2">
              <form name="member" method="post" action="adfixaccounts.jsp">
                <input type="submit" name="update" value="修改會員資料" class="mem_btn">
              </form>
            </td>
          </tr>
          </table>        
        </center>
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