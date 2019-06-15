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
<%  		
        try {
//Step 1: 載入資料庫驅動程式 
            Class.forName("com.mysql.jdbc.Driver");	  
            try {
//Step 2: 建立連線 
                String url="jdbc:mysql://localhost/";
                Connection con=DriverManager.getConnection(url,"root","1234");   				
	        if(con.isClosed())
                    out.println("連線建立失敗");
                else
                {	
//Step 3: 選擇資料庫
                    con.createStatement().execute("use mydatabase");  
					Object Cname = session.getAttribute("Cname");
//Step 4: 執行 SQL 指令        
                    String sql = "Select customer_no,customer_name,customer_tel,customer_address,customer_login,customer_password,customer_email,customer_birthday From customer Where customer_name='"+Cname+"'";
					ResultSet tmp =  con.createStatement().executeQuery(sql);
//Step 5: 顯示結果                    
                    while(tmp.next()){			
		    //一筆一筆讀取資料，如果回傳false,表示資料讀取完畢。
		    //用回圈印出結果，getString(1)表示id,getString(2)表示name,依此類推
							String csno=tmp.getString(1);
							String csname=tmp.getString(2);
							String cstel=tmp.getString(3);
							String csadd=tmp.getString(4);
							String cslog=tmp.getString(5);
							String csps=tmp.getString(6);
							String csem=tmp.getString(7);
							String csbir=tmp.getString(8);
							
			//每次印完一次資料，就印分隔線區隔。
%>
    <div id="sidebar_left"></div>
    <div id="sidebody">
      <div class="mem">
        <center>
        <table>
          <tr>
            <th>姓名</th>
            <td><%out.print(csname);%></td>
          </tr>

          <tr>
            <th>生日</th>
            <td><%out.print(csbir);%></td>
          </tr>
          <tr>
            <th>帳號</th>
            <td><%out.print(cslog);%></td>
          </tr>
          <tr>
            <th>密碼</th>
            <td><%out.print(csps);%></td>
          </tr>
          <tr>
            <th>信箱</th>
            <td><%out.print(csem);%></td>
          </tr>
          <tr>
            <th>地址</th>
            <td><%out.print(csadd);%></td>
          </tr>
          <tr>
            <th>電話</th>
            <td><%out.print(cstel);%></td>
          </tr>
		  		   <% }
							
//Step 6: 關閉連線
                    //con.close();
               }
          }        
          catch (SQLException sExec) {
              out.println("SQL錯誤"+sExec.toString());
          }
    }     
    catch (ClassNotFoundException err) {
          out.println("class錯誤"+err.toString());
    }    
 %>
          <tr>
            <td colspan="2">
              <form name="member" method="post" action="fixaccounts.jsp">
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