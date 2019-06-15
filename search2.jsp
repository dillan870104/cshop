<%@page contentType="text/html" %>
<%@page import="java.sql.*" %>
<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>C.SHOP服飾精品商城----男裝</title>
  <link rel="stylesheet" type="text/css" href="css01.css">
</head>
<body>
<div id="container">
    <div id="headbox1">
      <img class="comp1" src="pic/mark.jpg">
      <p class="user"><a href="shopping_cart.html"><img class="icon_cart" src="pic/icon_cart.png" title="購物車"></a>使用者，您好!<br>
        <a href="logout.jsp"> 登出</a>
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
        	
	//使用JDBC去連結MySQL，所以該行語法的意思，就是要告訴電腦我要使用JDBC
        try {
			
			String url="jdbc:mysql://localhost/myDatabase?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
			Connection con=DriverManager.getConnection(url,"root","1234");
//Step 2: 建立連線 
  
			String searching=new String(request.getParameter("searching").getBytes("ISO-8859-1"),"UTF-8");
			Class.forName("com.mysql.jdbc.Driver");	  
		//建立connection(連線)的語法，url代表我所要連結的MySQL所在IP，root是帳號，1234是密碼
		//此連線是指和mySql連線，不是和存在mySql內的特定資料庫連線。		
if(request.getParameter("searching")!=null && request.getParameter("searching")!="")
{
	//Step 3: 選擇資料庫	
                    con.createStatement().execute("USE mydatabase");
//Step 4: 執行 SQL 指令 
//Step 5: 顯示結果                    
                    	String sql ="SELECT* FROM product WHERE product_name = '"+searching+"'";
						ResultSet tmp =  con.createStatement().executeQuery(sql);
						con.createStatement().execute(sql); 
						%><center><%out.print("<h2>您所蒐尋的項目為:&nbsp</h2>");%></center><%
						if(tmp.next()){%><center><%
							out.print("<h2>"+tmp.getString(2)+"<br></h2>");
							out.print("<h2>價格為:&nbsp"+tmp.getString(3)+"<br></h2>");
							out.print("<h2>剩餘數量為:&nbsp"+tmp.getString(4)+"<br></h2>");
							%><img src="pic/all/<%out.print(tmp.getString(1));%>.jfif"></center><%
						}
						else{
							%><center><%
							out.print("查不到這個項目");
							%></center><%
						}
						
}
else
{
						%>
					<script language="javascript">
					window.location = 'index2.jsp';
					</script>
					<%
}
//Step 6: 關閉連線
           con.close();
        }            
        catch (SQLException sExec) {
           out.println("SQL錯誤!" + sExec.toString());
        }
    }       
    catch (ClassNotFoundException err) {
          out.println("class錯誤" + err.toString());
    }    
%> 
<footer> 
  <p class="footword"><img class="comp2" src="pic/mark.jpg">
  聯絡我們|關於我們|使用條款<br>
  客服專線:0800-000-123<br>
  地址: 320桃園市中壢區中北路200號<br>
 </p>
</footer>
</body>
</html>