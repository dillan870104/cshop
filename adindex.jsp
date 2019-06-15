<%@ page import = "java.io.*"%>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>C.SHOP服飾精品商城</title>
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
        <button class="subnavbtn"><a href="adindex.jsp">HOME</a></button>
      </div>
	        <div class="subnav">
        <button class="subnavbtn"><a href="adread.jsp">訂單管理</a></button>
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
	<!-- 幻燈片 -->
	<div class="slideshow-container">

  		<div class="mySlides fade">
    		<img src="pic/ad1.jpg" style="width:100%;height: 400px">
  		</div>

  		<div class="mySlides fade">
    		<img src="pic/ad2.jpg" style="width:100%;height: 400px">
  		</div>

  		<div class="mySlides fade">
    		<img src="pic/ad3.jpg" style="width:100%;height: 400px">
  		</div>

  		<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  		<a class="next" onclick="plusSlides(1)">&#10095;</a>
	</div>

  
	<div style="text-align:center">
		<span class="dot" onclick="currentSlide(1)"></span> 
		<span class="dot" onclick="currentSlide(2)"></span> 
		<span class="dot" onclick="currentSlide(3)"></span> 
	</div>
    <script src="slideshow.js"></script>
    </div>
    
    <marquee scrollamount="20">好禮大放送~大家快來買喔</marquee>

    <!--熱門商品-->
    <div id="sidebar_left"></div>
    <div id="sidebody">
      <h1 class="title">熱門商品</h1><br>
      <div class="box">
        <a href="1.jsp"><img src="pic/men/longt3.jfif" class="box_pic"></a>
        <p>漸層藍襯衫</p>
      </div>
      <div class="box">
        <a href="17.jsp"><img src="pic/women/glongt3.jfif" class="box_pic"></a>
        <p>長袖薄T-女</p>
      </div>
      <div class="box">
        <a href="19.jsp"><img src="pic/men/pants3.jfif" class="box_pic"></a>
        <p>白棉褲</p>
      </div>
      <div class="box">
        <a href="20.jsp"><img src="pic/women/gpants2.jpg" class="box_pic"></a>
        <p>牛仔長褲-女</p>
      </div>
      <div class="box">
        <a href="8.jsp"><img src="pic/men/shortt2.jfif" class="box_pic"></a>
        <p>印花橘短T</p>
      </div><br>
    
    <!--精品推薦-->
      <h1 class="title">精品推薦</h1><br>
      <div class="box">
        <a href="15.jsp"><img src="pic/women/glongt1.jfif" class="box_pic"></a>
        <p>大學T-女</p>
      </div>
      <div class="box">
        <a href="14.jsp"><img src="pic/men/longt2.jfif" class="box_pic"></a>
        <p>格子毛衣</p>
      </div>
      <div class="box">
        <a href="18.jsp"><img src="pic/men/pants2.jfif" class="box_pic"></a>
        <p>牛仔長褲</p>
      </div>
      <div class="box">
        <a href="21.jsp"><img src="pic/women/gpants4.jfif" class="box_pic"></a>
        <p>灰色丹寧褲-女</p>
      </div>
      <div class="box">
        <a href="7.jsp"><img src="pic/men/shortt1.jfif" class="box_pic"></a>
        <p>印花白短T</p>
      </div><br>
<!--促銷商品-->
      <h1 class="title">促銷商品</h1><br>
      <div class="box">
        <a href="2.jsp"><img src="pic/men/longt4.jfif" class="box_pic"></a>
        <p>圓領襯衫</p>
      </div>
      <div class="box">
        <a href="9.jsp"><img src="pic/women/gshortt1.jpg" class="box_pic"></a>
        <p>卡通印花短T-女</p>
      </div>
      <div class="box">
        <a href="12.jsp"><img src="pic/men/longt1.jpg" class="box_pic"></a>
        <p>白大學T</p>
      </div>
      <div class="box">
        <a href="16.jsp"><img src="pic/women/glongt2.jpg" class="box_pic"></a>
        <p>高領毛衣-女</p>
      </div>
      <div class="box">
        <a href="21.jsp"><img src="pic/women/gpants3.jfif" class="box_pic"></a>
        <p>灰色丹寧褲-女</p>
      </div>
    
    </div>
    <div id="sidebar_right"></div>
    <div id="clear"></div>
    <%
      try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 
        String url=url="jdbc:mysql://localhost/myDatabase?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else
        {
//Step 3: 選擇資料庫         
           String sql="use mydatabase";
           ResultSet rs;
           con.createStatement().execute(sql);
           //設定亂數ran
           Random ran=new Random();
           // current_adid亂數決定值為1-3,//nextInt(3)產生0到2的亂數
           int current_adid=ran.nextInt(3)+1;
//Step 4: 執行 SQL 指令, 只有一筆資料             
           sql="select * from ad where ADID= " + current_adid;
           rs=con.createStatement().executeQuery(sql);
//Step 5: 顯示結果            
           // 產生廣告需要的連結, 圖片, 替代文字
           while (rs.next()) //只有一筆資料
           {
             out.println("<a href='pic//"+rs.getString(4)+"'>");
             out.println("<img src='"+rs.getString(2)+"/"+rs.getString(3)+"'");
             out.println(" alt='"+rs.getString(5)+"'></a>");
           }
       sql="select count(*) from ad";
           ResultSet ms=con.createStatement().executeQuery(sql);
           /*if(ms.next())
           {
            out.println(ms.getString("count(*)"));

           }*/
        }
//Step 6: 關閉連線
        con.close();
    }
    catch (SQLException sExec) {
        out.println("SQL錯誤"+sExec.toString());
    }
}
    catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
}


    %>

</div>
<footer> 
  <p class="footword"><img class="comp2" src="pic/mark.jpg">
  聯絡我們|關於我們|使用條款<br>
  客服專線:0800-000-123<br>
  地址: 320桃園市中壢區中北路200號<br>
  <%
String thePath=request.getRealPath("/")+"counter" ; 
//out.println(thePath);
//getRealPath表本網頁所在的根目錄
File count=new File(thePath,"counter.txt");//要事先建立
BufferedReader count_in=new BufferedReader(new FileReader(count));//建立檔案輸入串流
//int x=count_in.read(); //使用read讀取檔案, 格式為ASCII
int x=Integer.parseInt(count_in.readLine());//使用readLine讀取檔案, 格式為字串
count_in.close();//關閉輸入串流
//計數器加1
if (session.isNew())
{x++;}
out.print("<font size=5>你是第"+x+"位訪客</font>");
FileWriter count_out=new FileWriter(count);
count_out.write(String.valueOf(x));//將數字轉成字串,寫入輸出串流
count_out.flush();//將buffer寫入
count_out.close();//關閉串流
%>
 </p>
</footer>
</body>
</html>