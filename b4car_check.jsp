<%@page contentType="text/html" %>
<%@page import="java.sql.*" %>
<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>C.SHOP服飾精品商城----購物車</title>
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
      <div class="car">
        <center><form name="product1" method="post" action="order.jsp">
          <table class="car_table">
            <tr>
              <td class="car_td"><img src="pic/men/longt3.jfif" width="310px" height="330px"></td>
              <td class="car_td">
                <ul>
                  <li>
                    名稱：漸層藍襯衫
                  </li>
                  
                  <li>
                    單價：250 元
                  </li>
                  
                  <li>
                    數量：1
                  </li>

                  <li>
                    尺寸：S
                  </li>
                  
                  <li>
                    總價：250 元
                  </li>
                  
                  
                </ul>
              </td>
            </tr>
            
            
            <tr>
              <td class="car_td"><img src="pic/men/longt3.jfif" width="310px" height="330px"></td>
              <td class="car_td">
                <ul>
                  <li>
                    名稱：漸層藍襯衫
                  </li>
                  
                  <li>
                    單價：250 元
                  </li>
                  
                  <li>
                    數量：2
                    
                  </li>

                  <li>
                    尺寸：M
                  </li>
                  
                  <li>
                    總價：500 元
                  </li>
                  
                  
                </ul>
              </td>
            </tr>
            
          </table>
          <hr>
          <div>
            <table class="car_check_table" >
              <tr>
                <td class="car_check_td">聯絡人姓名: </td>
                <td class="car_check_td"><input type="text" name="name" required></td>
              </tr>
              <tr>
                <td class="car_check_td">手機: </td>
                <td class="car_check_td"><input type="text" name="cel" required></td>
              </tr>
              <tr>
                <td class="car_check_td">地址: </td>
                <td class="car_check_td"><input type="text" name="address" required></td>
              </tr>
              <tr>
                <td class="car_check_td">運送方式: </td>
                <td class="car_check_td">貨到付款</td>
              </tr>
              <tr>
                <td colspan="2" class="car_check_td" id="car_check_td2"><input type="checkbox" name="insert"> 匯入會員資料</td>
              </tr>
            </table>
            
          </div>
          
          <input type="submit" name="check" value="確認" class="car_btn">
          <a href="b4shopping_cart.jsp"><input type="button" name="clear" value="取消" class="car_btn"></a>
          
        </form> </center>
      </div>  
      















    </div>
    <div id="sidebar_right"></div>
    <div id="clear"></div>
<footer> 
  <p class="footword"><img class="comp2" src="pic/mark.jpg">
  聯絡我們|關於我們|使用條款<br>
  客服專線:0800-000-123<br>
  地址: 320桃園市中壢區中北路200號<br>
  <a href="adminlog.jsp"><img src="icon/set.png" class="setp" width="50" height="50"></a>
 </p>
</footer>
</body>
</html>