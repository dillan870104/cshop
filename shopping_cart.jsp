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
    <%
      Class.forName("com.mysql.jdbc.Driver");
      //String login=request.getParameter("id");
      String password=request.getParameter("pwd");
      String url="jdbc:mysql://localhost/myDatabase?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
      String sql="";
      Connection con=DriverManager.getConnection(url,"root","1234");   
      con.createStatement().execute("USE mydatabase");
      Object prono = session.getAttribute("prono");
      sql="SELECT * from shop";
      ResultSet sh=con.createStatement().executeQuery(sql);
 
     /* Object prono = session.getAttribute("prono");

      Object amount = session.getAttribute("sh2");
      Object size = session.getAttribute("sh3");
      out.print(prono);*/

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
        <button class="subnavbtn"><a href="about_us.jsp">ABOUT US</a></button>
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
      <div class="car">
        <center>
          <form name="product1" method="post" action="read.jsp">
          <table class="car_table"> 
          <tr class="car_tr">
          
          <%while(sh.next()){%>
           <div >
             
           </div><td  class="car_td"><img src="pic/all/<%out.print(sh.getString(2));%>.jfif" width="310px" height="330px"></td>
           <td  class="car_td">
            
            
      <%
				sql="use myDatabase";
                 sql = "INSERT ppcar('pn','pa','ps') " +"VALUES ('"+sh.getString(2)+"','"+sh.getString(3)+"','"+sh.getString(4)+"')";
			
            /*sql="SELECT * from board";
            ResultSet rs=con.createStatement().executeQuery(sql);

            //先移到檔尾, getRow()後, 就可知道共有幾筆記錄
           rs.last();*/
           /* sql="SELECT * from shop";
            ResultSet sh=con.createStatement().executeQuery(sql);
            sh.last();
            sh.next();
            sh.getString(1);*/
        out.print("<li>商品編號 : "+sh.getString(2)+"</li><li>數量 : "+sh.getString(3)+"</li><li>大小 : "+sh.getString(4));

     }    
     %></div> 
          <!--
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
        <-->
        
        
        <tr class="car_tr">
<!-- 改css 加class  -->

      </tr>
    </table>
    <input type="submit" name="check" value="確認" class="car_btn">
    <a href="index2.jsp"><input type="button" name="continue" value="繼續購物" class="car_btn"></a>
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