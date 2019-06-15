<%@page contentType="text/html" %>
<%@page import="java.sql.*" %>
<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>C.SHOP服飾精品商城----管理者介面</title>
  <link rel="stylesheet" type="text/css" href="css01.css">
  <style>
.vertical-menu {
  width: 200px;
  position:fixed;
}

.vertical-menu a {
  background-color: #eee;
  color: black;
  display: block;
  padding: 12px;
  text-decoration: none;

}

.vertical-menu a:hover {
  background-color: #ccc;

}
ul li{
  list-style-type:none;
}
</style>
</head>
<body>
<div id="container">
    <div id="headbox1">
      <img class="comp1" src="pic/mark.jpg">
      <p class="user"><a href="adshopping_cart.jsp"><img class="icon_cart" src="pic/icon_cart.png" title="購物車"></a>管理者，您好!<br>
        <a href="logout.jsp"> 登出</a>
      </p>
    </div>
    <div id="headbox2">
      <div class="navbar">
      <div class="subnav">
        <button class="subnavbtn"><a href="adread.jsp">訂單管理</a></button>
      </div>

      <div class="subnav">
        <button class="subnavbtn"><a href="admin.jsp">更改商品內容</a></button>
      </div>
      <div class="subnav">
        <button class="subnavbtn"><a href="admin_insert.jsp">新增商品</a></button>
      </div>
      <div class="subnav">
        <button class="subnavbtn"><a href="admin_delete.jsp">刪除商品</a></button>
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

    <div id="sidebar_left">
      <div class="vertical-menu">
        <a href="#a">襯衫</a>
        <a href="#b">夏裝</a>
        <a href="#c">秋裝</a>
        <a href="#d">長褲</a>
        <a href="#e">短褲</a>
      </div>
    </div>
    <div id="sidebody">
      <div class="car">
        <h1 class="title" id="a">新增商品</h1><br><hr>
        <center>
          <table class="car_table"> 
        <form name="salecorrect" method="post" action="admin_insert2.jsp">
          <tr class="car_tr">
            <td  class="car_td"><img src="pic/men/longt3.jfif" width="310px" height="330px"></td> 
            <td  class="car_td">
            <ul> 
              <li>增加商品編號 :  <input type="text" name="newpro_no"> </li>                                           
              <li>商品名稱 : <input type="text" name="newpro_name">  </li>  
              <li>商品價錢 : <input type="text" name="newpro_cost"> </li>
              <li>商品庫存 : <input type="text" name="newpro_amount"> </li>
              <li>商品供應商 : <input type="text" name="newpro_supplier"> </li>
              <li>適合性別 : <input type="text" name="newpro_sex"> </li>
              
              <button type="submit" class="car_del" name="pr_no" style="width: 140px; height:40px" value="001">更改庫存</button>
              </ul>
            
          </tr>      
          </form>   
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