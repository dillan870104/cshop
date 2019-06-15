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
	
			String newpro_no=request.getParameter("newpro_no");
      String newpro_cost=request.getParameter("newpro_cost");
      String newpro_name=new String(request.getParameter("newpro_name").getBytes("ISO-8859-1"),"UTF-8");
      String newpro_sex=new String(request.getParameter("newpro_sex").getBytes("ISO-8859-1"),"UTF-8");
      String newpro_amount=request.getParameter("newpro_amount");
      String newpro_supplier=request.getParameter("newpro_supplier");


      
     sql="use myDatabase";  

   
       
      
    
      sql="SELECT * From product Where product_no='"+newpro_no+"' ";
      ResultSet aaa = con.createStatement().executeQuery(sql);
      if(aaa.next()){
        
        %><script language="javascript">
          alert("你使用了重複的商品編號!!!");
          window.location = 'admin_insert.jsp';
          </script><%
    }
      
     
      sql = "INSERT product(product_no,product_name,product_price,product_amount,supplier_no,sex) " +
                "VALUES ('"+newpro_no+"','"+newpro_name+"','"+newpro_cost+"','"+newpro_amount+"','"+newpro_supplier+"','"+newpro_sex+"')";
      con.createStatement().execute(sql);


      
			/*out.print(pro_no);
      out.print(pro_cost);
      out.print(pro_amount);*/

         // con.close();


%> 

   <div id="sidebody">
      <div class="car">
        <h1 class="title" id="a">新增商品</h1><br><hr>
        <center>
          <table class="car_table"> 
        <form name="salecorrect" method="post" >
          <tr class="car_tr">
            <%      
             sql="use myDatabase";  
            sql="SELECT * from product where product_no='"+newpro_no+"'";
            ResultSet tmp = con.createStatement().executeQuery(sql);
            tmp.next();
            %>
            <td  class="car_td"></td> 
            <td  class="car_td">
            <ul> 
              <li>商品編號 :<%out.print(tmp.getString(1));%>   </li>                                           
              <li>商品名稱 : <%out.print(tmp.getString(2));%>  </li>  
              <li>商品價錢 : <%out.print(tmp.getString(3));%> </li>
              <li>商品庫存 : <%out.print(tmp.getString(4));%> </li>
              <li>商品供應商 : <%out.print(tmp.getString(5));%></li>
              <li>適合性別 : <%out.print(tmp.getString(6));%> </li>
              
             <a href="admin.jsp"><text type="submit" class="car_del" name="pr_no" style="width: 140px; height:40px" value="001">返回修改頁面</a>
              </ul>
            
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