<%@page contentType="text/html" %>
<%@page import="java.sql.*" %>
<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>C.SHOP服飾精品商城----購物車</title>
  <link rel="stylesheet" type="text/css" href="css01.css">
  <style>
    ul li{
      list-style-type:none;
    }
  </style>
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
        <button class="subnavbtn"><a href="b4about_us.jsp">ABOUT US</a></button>
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
      <div class="car">
        <center><form name="product1" method="post" action="car_check.jsp">
          <table class="car_table"> 
          <tr class="car_tr">
            <td  class="car_td"><img src="pic/men/longt3.jfif" width="310px" height="330px"></td> 
            <td  class="car_td">
            <ul>
              <li>
                名稱: 漸層藍襯衫
              </li>
              
              <li>
                單價: 250 元
              </li>
              
              <li>
                數量:
                <select name="amount">
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                  <option>6</option>
                  <option>7</option>
                  <option>8</option>
                  <option>9</option>
                  <option>10</option>
                </select>
              </li>
              
              <li>
                大小:
                <select name="size">
                  <option>XS</option>
                  <option>S</option>
                  <option>M</option>
                  <option>L</option>
                  <option>XL</option>
                </select>
              </li>

              <li>
                總價: 250 元
              </li>
              
              <li>
                <input type="button" name="del" value="刪除" class="car_del" >
              </li>
              
            </ul>
          </td>
        </tr>
        
        
        <tr class="car_tr">
          <td class="car_td"><img src="pic/men/longt3.jfif" width="310px" height="330px"></td>  <!-- 改css 加class  -->
          <td class="car_td">   <!-- 改css 加class  -->
          <ul>
            <li>
              名稱: 漸層藍襯衫
            </li>
            
            <li>
              單價: 250 元
            </li>
            
            <li>
              數量:
              <select name="amount">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
                <option>9</option>
                <option>10</option>
              </select>
            </li>

            <li>
              尺寸:
                <select name="size">
                  <option>XS</option>
                  <option>S</option>
                  <option>M</option>
                  <option>L</option>
                  <option>XL</option>
                </select>

            </li>
            
            <li>
              總價: 250 元
            </li>
            
            <li>
              <input type="button" name="del" value="刪除" class="car_del">
            </li>
            
          </ul>
        </td>
      </tr>
    </table>
    <a href="b4car_check.jsp"><input type="button" name="check" value="確認" class="car_btn"></a>
    <a href="index.jsp"><input type="button" name="continue" value="繼續購物" class="car_btn"></a>
    <input type="button" name="clear" value="清空購物車" class="car_btn">
    
  </form> </center>














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