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


     <%  	

//Step 1: 載入資料庫驅動程式 
	  
	//使用JDBC去連結MySQL，所以該行語法的意思，就是要告訴電腦我要使用JDBC
             try {
//Step 1: 載入資料庫驅動程式 
            Class.forName("com.mysql.jdbc.Driver");   
            try {
//Step 2: 建立連線 
                String sql="";
                String url="jdbc:mysql://localhost/myDatabase?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
                Connection con=DriverManager.getConnection(url,"root","1234");  
                        
          if(con.isClosed())
                    out.println("連線建立失敗");
                else
                { 
	
			String delpro_no=request.getParameter("delpro_no");
      //sql="Delete From customer Where customer_name='"+Cname+"' ";
      
     sql="use myDatabase";  
    
      sql="Delete From product Where product_no='"+delpro_no+"' ";
     // ResultSet aaa = con.createStatement().executeQuery(sql);

      
      /*if(!aaa.next()){
        
        %><script language="javascript">
          alert("沒有這個商品商品編號!!!");
          window.location = 'admin_insert.jsp';
          </script><%
    }*/
      
     



      
			/*out.print(pro_no);
      out.print(pro_cost);
      out.print(pro_amount);*/

         // con.close();


%> 

   <div id="sidebody">
      <div class="car">
        <h1 class="title" id="a">刪除商品</h1><br><hr>
        <center>
          <table class="car_table"> 
        <form name="salecorrect" method="post" >
          <tr class="car_tr">
            <%out.print("你已成功刪除產品編號 : "+delpro_no); %>
            
          </tr>      
          </form>   
      </table>
  </center>
</div>        

<%
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