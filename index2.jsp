<%@ page import = "java.io.*"%>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>C.SHOP服飾精品商城</title>
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
          <form action="search.jsp">
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
    <marquee class="m" scrollamount="7">歐洲精選服飾、流行商品，通通都在&nbsp;&nbsp;&nbsp;C-SHOP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;夏季商品促銷活動&nbsp;&nbsp;&nbsp;限時優惠(6/13~7/10)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;要買要快!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;簡單新時尚&nbsp;&nbsp;&nbsp;C-SHOP</marquee>


    <!--熱門商品-->
    <div id="sidebar_left"></div>
    <div id="sidebody">
    
     <form action="1.jsp" method="get" accept-charset="utf-8">

      <h1 class="title">熱門商品</h1><br>
      <div class="box">
        <a href="1.jsp" ><button name="id" value="001"><img src="pic/men/longt3.jfif" class="box_pic" ></button></a>
        <p>漸層藍襯衫</p>
      </div>
      <div class="box">
        <a href="1.jsp" ><button name="id" value="017"><img src="pic/women/glongt3.jfif" class="box_pic"></button></a>
        <p>長袖薄T-女</p>
      </div>
      <div class="box">
        <a href="1.jsp"><button name="id" value="019"><img src="pic/men/pants3.jfif" class="box_pic" name="id" value="019"></button></a>
        <p>白棉褲</p>
      </div>
      <div class="box">
        <a href="1.jsp"><button name="id" value="020"><img src="pic/women/gpants2.jpg" class="box_pic"></button></a>
        <p>牛仔長褲-女</p>
      </div>
      <div class="box">
        <a href="8.jsp"><button name="id" value="008"><img src="pic/men/shortt2.jfif" class="box_pic"></button></a>
        <p>印花橘短T</p>
      </div><br>

     </form>
    
   
    <!--精品推薦-->
    <form action="1.jsp" method="get" accept-charset="utf-8">
      <h1 class="title">精品推薦</h1><br>
      <div class="box">
        <a href="1.jsp"><button name="id" value="015"><img src="pic/women/glongt1.jfif" class="box_pic"></button></a>
        <p>大學T-女</p>
      </div>
      <div class="box">
        <a href="1.jsp"><button name="id" value="014"><img src="pic/men/longt2.jfif" class="box_pic"></button></a>
        <p>格子毛衣</p>
      </div>
      <div class="box">
        <a href="1.jsp"><button name="id" value="018"><img src="pic/men/pants1.jfif" class="box_pic"></button></a>
        <p>牛仔長褲</p>
      </div>
      <div class="box">
        <a href="1.jsp"><button name="id" value="024"><img src="pic/women/gpants4.jfif" class="box_pic"></button></a>
        <p>休閒短褲-(褐)女</p>
      </div>
      <div class="box">
        <a href="1.jsp"><button name="id" value="007"><img src="pic/men/shortt1.jfif" class="box_pic"></button></a>
        <p>印花白短T</p>
      </div><br>
    </form>

<!--促銷商品-->
    <form action="1.jsp" method="get" accept-charset="utf-8">
      <h1 class="title">促銷商品</h1><br>
      <div class="box">
        <a href="1.jsp"><button name="id" value="002"><img src="pic/men/longt4.jfif" class="box_pic"></button></a>
        <p>圓領襯衫</p>
      </div>
      <div class="box">
        <a href="1.jsp"><button name="id" value="009"><img src="pic/women/gshortt1.jpg" class="box_pic"></button></a>
        <p>卡通印花短T-女</p>
      </div>
      <div class="box">
        <a href="1.jsp"><button name="id" value="012"><img src="pic/men/longt1.jpg" class="box_pic"></button></a>
        <p>白大學T</p>
      </div>
      <div class="box">
        <a href="1.jsp"><button name="id" value="016"><img src="pic/women/glongt2.jpg" class="box_pic"></button></a>
        <p>高領毛衣-女</p>
      </div>
      <div class="box">
        <a href="1.jsp"><button name="id" value="021"><img src="pic/women/gpants3.jfif" class="box_pic"></button></a>
        <p>灰色丹寧褲-女</p>
      </div>
    </form>
    
    </div>
    <div id="sidebar_right"></div>
    <div id="clear"></div>

  <%
             
      Class.forName("com.mysql.jdbc.Driver");
      String login=request.getParameter("id");
      String password=request.getParameter("pwd");
      String url="jdbc:mysql://localhost/myDatabase?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
      String sql="";
      Connection con=DriverManager.getConnection(url,"root","1234");   
      con.createStatement().execute("USE mydatabase");
           
           ResultSet rs;
           
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
        
//Step 6: 關閉連線
        con.close();
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