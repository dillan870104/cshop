<%@page contentType="text/html" %>
<%@page import="java.sql.*" %>
<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>漸層藍襯衫</title>
  <link rel="stylesheet" type="text/css" href="css01.css">
</head>
<style>
.checked {
  color: orange;
}

/*Main*/
.wrap {
    margin: 0 auto;
    width: 56.25em;
}
 
/*mes-board*/
.mes-board {
    margin: 1.875em 0;
    border: 1px solid #aaa;
    padding: 0 .7em;
    background-color: #fcf;
}
.mes-board li { padding: .7em 0; }
.mes-board li + li { border-top: 1px dashed #fff; }
.mes-board h4 {
    display: inline;
    margin-right: 2px;
    font-weight: 400;
    color: #66f;
}
.mes-board small { color: #999; }
.mes-board p {
    padding: 1em 0;
 
}

/*mes-send*/
.mes-send {
    padding: .65em;
    border: 1px solid #ccc;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    border-radius: 5px;
    position:relative;
    top:-400px;

}
.form-group { padding: 1.25em; }
.form-group label { vertical-align: top; }
.mes-send input[type="text"],
.mes-send textarea {
    padding: 1px;
    width: 40%;
    border: 1px solid #b7b7b7;
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
}
.mes-send input { height: 2em; }

</style>
<body>
    <%
      Class.forName("com.mysql.jdbc.Driver");
      //String login=request.getParameter("id");
      String password=request.getParameter("pwd");
      String url="jdbc:mysql://localhost/myDatabase?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
      String sql="";
      Connection con=DriverManager.getConnection(url,"root","1234");   
      con.createStatement().execute("USE mydatabase");
    %>

<div id="container">
    <div id="headbox1">
      <img class="comp1" src="pic/mark.jpg">
      <p class="user"><a href="shopping_cart.jsp"><img class="icon_cart" src="pic/icon_cart.png" title="購物車"></a>使用者，您好!<br>
        <a href="logout.jsp"> 登出</a>
      </p>
    </div>
    <div class="headbox2">
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
        <button class="subnavbtn"><a href="about_us.jsp">ABOUT US</a> </button>
      </div>

      <div class="subnav">
        <div class="search-container">
          <form action="/action_page.php">
            <input type="text" placeholder="搜尋..">
            <button type="submit">搜尋</button>
          </form>
        </div>
      </div>
      </div>
    </div>
    
    <%
      String product_no = request.getParameter("id");
      session.setAttribute("ppp", product_no);

      sql="SELECT * from product where product_no='"+product_no+"'";
      ResultSet tmp = con.createStatement().executeQuery(sql);
      tmp.next();
	  	  String yy1=tmp.getString(1);
	   session.setAttribute("prono", yy1);
    %>

    <div id="sidebar_left"></div>
    <div id="sidebody">
      <div class="item">
        <a href="sales.jsp" style="text-decoration:none;">所有商品 </a> > <a href="menc.jsp" style="text-decoration:none;"> <%out.print(tmp.getString(6));%> </a> > <%out.print(tmp.getString(2)); %>
      </div>
      <div class="item2">
        <img id="myImg" src="pic/all/<%out.print(tmp.getString(1));%>.jfif" title="點我放大" style="width:100%;max-width:400px">
        <div id="myModal" class="modal">
          <span class="close">&times;</span>
          <img class="modal-content" id="img01">
          <div id="caption"></div>
        </div>
      </div>
            <div class="item3">

       <% //con.close(); %>
    

      
        <form name="login" method="post" action="shop.jsp">
		<table>
          <caption style="font-weight:bold"><span style="font-size:28px"><%out.print(tmp.getString(2)); %></span></caption>
          <tr>
            <td><center><img src="icon/list.jpg" width="30px" height="30px"></center></td>

            <td>&nbsp;商品編號:&nbsp;</td>
			<td><%out.print(tmp.getString(1)); %></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td><center><img src="icon/intro.jpg" width="30px" height="30px"></center></td>
            <td>&nbsp;商品介紹:&nbsp;</td>
            <td>產地:台灣<br>亞麻65%、棉35%</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td><center><img src="icon/price.jpg" width="30px" height="30px"></center></td>
            <td>&nbsp;商品單價:&nbsp;</td>
            <td><%out.print(tmp.getString(3)); %></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
          <td><center><img src="icon/size.png" width="30px" height="30px"></center></td>
            <td>&nbsp;商品尺寸:&nbsp;</td>
            <td><select name="size" style="font-size:20px">
            <option value="XS">XS</option>
            <option value="S">S</option>
            <option value="M">M</option>
            <option value="L">L</option>
            <option value="XL">XL</option></select></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td><center><img src="icon/quantity.jpg" width="30px" height="30px"></center></td>
            <td>&nbsp;數量:&nbsp;</td>
            <td><select name="amount" style="font-size:20px">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option></select></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
           <tr>
            <td></td>
            <td>&nbsp;庫存:&nbsp;</td>
            <td>
               <option value="1" disabled><%out.print(tmp.getString(4)); %></option>
               </td>
            </td>
          </tr>
          <tr>
            <td>&nbsp;&nbsp;&#9733;</td>
            <td>&nbsp;我要評分:&nbsp;</td>
            <td>
               <select name="point" style="font-size:20px">
               <option value="1">1&#9733;</option>
               <option value="2">2&#9733;</option>
               <option value="3">3&#9733;</option>
               <option value="4">4&#9733;</option>
              <option value="5">5&#9733;</option></select></td>
            </td>
          </tr>
          <tr>                                                                                          <!--這裡-->
            <td colspan="2"><input type="submit" value="加入購物車" class="buttoncar"></td>
          </tr>
		  </table>
        </form>
      </div>
      
    </div>                                                                                        <!--到這裡-->


    </div>
    <div id="sidebar_right"></div>
    <div id="clear">
  <section class="mes-send">
            
       <div class="form-group">
          <form method="post" action="comment.jsp">
            <table class="Tboard">
      <tr class="Bhead"><td colspan="2"class="comment">
      <h2>我要留言</h2></td></tr>
      <!-- <tr>
        <th class="comment" id="a">姓名：</th>
        <td class="comment"><input type="text" style="width: 60px" name="user_name" required></input>         
      </tr>
      <-->

      <tr>
        <th class="comment" id="a">留下評論吧：</th>
        <td class="comment"><textarea  style="width: 400px" name="user_mes" required></textarea>
          <input type="submit" value="送出" class="but"></td>
      </tr>
          </table>
          </form> 
         </div>

    
<!--
         <div class="form-group">
          <form method="post" action="comment.jsp">
            
            <label for="product_no">商品編號：</label>
            <select  value="<%out.print(product_no);%>" name="product_no" disabled>
              <option  value="<%out.print(product_no);%>" name="<%out.print(product_no);%>"><%out.print(product_no);%></option>
            </select><br>
            

            <label for="user_mes">留下評論吧：</label>
            <textarea id="user_mes" name="user_mes" ></textarea><br>
            <input type="submit" name="submit" value="送出">&nbsp;<input type="reset" value="重 填">
          </form> 
         </div>
         <-->
  
      
         
    
  </section>

    </div>

      <div>
        <%
    /*      try {
    //Step 1: 載入資料庫驅動程式 
          Class.forName("com.mysql.jdbc.Driver");
    //使用JDBC去連結MySQL，所以該行語法的意思，就是要告訴電腦我要使用JDBC
        try {
             login=request.getParameter("id");
             password=request.getParameter("pwd");
      
    //Step 2: 建立連線 
           String url="jdbc:mysql://localhost/myDatabase?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
           String sql="";
           Connection con=DriverManager.getConnection(url,"root","1234");   
        //建立connection(連線)的語法，url代表我所要連結的MySQL所在IP，root是帳號，1234是密碼

    //Step 3: 選擇資料庫 
            con.createStatement().execute("USE mydatabase");
    */        //con.createStatement().execute(sql);
        //Step 4: 執行 SQL 指令, 若要操作記錄集, 需使用executeQuery, 才能傳回ResultSet  


             //算出共幾筆留言
           // sql="SELECT * from board"; //算出共幾筆留言
           // sql="SELECT * from board where product_no="+product_no+"'";
            sql="SELECT * from board";
            ResultSet rs=con.createStatement().executeQuery(sql);

            //先移到檔尾, getRow()後, 就可知道共有幾筆記錄
           rs.last();
           int total_content=rs.getRow();
          // out.println("共"+total_content+"筆留言<p>");

            //每頁顯示5筆, 算出共幾頁
            int page_num=(int)Math.ceil((double)total_content/5.0);
            //無條件進位
       if (page_num==0) //無留言時將頁數指標訂為1
           page_num=1;
           out.println("請選擇頁數");
           //使用超連結方式, 呼叫自己, 使用get方式傳遞參數(變數名稱為page)
           for(int i=1;i<=page_num;i++) //使用get傳輸方式,建立1,2,...頁超連結
              {
        // out.print("<a href='view.jsp?page="+i+"'>"+i+"</a>&nbsp;");
        out.print("<a href='view.jsp?page="+i+"'>"+i+"</a>&nbsp;");
         //&nbsp;html的空白
           }
           out.println("<p>");

           //讀取page變數
           String page_string = request.getParameter("page");
           if (page_string == null) 
               page_string = "1";  //無留言時將頁數指標訂為1        
           Integer current_page=Integer.valueOf(page_string);//將page_string轉成整數
           //Integer current_page=Integer.valueOf(request.getParameter("page"));
         //計算開始記錄位置   
//Step 5: 顯示結果 
           int start_record=(current_page-1)*5;
           //遞減排序, 讓最新的資料排在最前面
           sql="SELECT * FROM board WHERE pro='"+product_no+"' ORDER BY putdate DESC LIMIT ";//LIMIT是限制傳回筆數
           sql+=start_record+",5";
           //上述語法解讀如下:
           // current_page... select * from board order by no desc limit
           //      current_page=1: select * from board order by no desc limit 0, 5 //從第0筆顯示5筆
           //      current_page=2: select * from board order by no desc limit 5, 5 //從第5筆顯示5筆
           //      current_page=3: select * from board order by no desc limit 10, 5//從第10筆顯示5筆

           rs=con.createStatement().executeQuery(sql);
            
//  逐筆顯示, 直到沒有資料(最多還是5筆)
           while(rs.next())
                {
                
                 //out.println("留言主題:"+rs.getString(4)+"<br>");
        // out.println("留言主題:"+rs.getString("subject")+"<br>");
                 //out.println("訪客姓名:"+rs.getString(2)+"<br>");
        // out.println("訪客姓名:"+rs.getString("name")+"<br>");
                 //out.println("E-mail:"+rs.getString(3)+"<br>");
         out.println("product_no:"+rs.getString("pro")+"<br>");
                 //out.println("留言內容:"+rs.getString(5)+"<br>");
         out.println("留言內容:"+rs.getString("content")+"<br>");
                 //out.println("留言時間:"+rs.getString(6)+"<br><hr>");
         out.println("留言時間:"+rs.getString("putdate")+"<br><hr>");
                  
                }
//Step 6: 關閉連線
          con.close();
      //}
  //  }
   /* catch (SQLException sExec) {
           out.println("SQL錯誤");
    }
}
catch (ClassNotFoundException err) {
      out.println("class錯誤");
}*/
%>
      </div>

<footer> 
  <p class="footword"><img class="comp2" src="pic/mark.jpg">
  聯絡我們|關於我們|使用條款<br>
  客服專線:0800-000-123<br>
  地址: 320桃園市中壢區中北路200號
 </p>
</footer>
<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}  


  // Get the modal
  var modal = document.getElementById('myModal');
  // Get the image and insert it inside the modal - use its "alt" text as a caption
  var img = document.getElementById('myImg');
  var modalImg = document.getElementById("img01");
  var captionText = document.getElementById("caption");
  img.onclick = function(){
  modal.style.display = "block";
  modalImg.src = this.src;
  captionText.innerjsp = this.alt;
  }
  // Get the <span> element that closes the modal
              var span = document.getElementsByClassName("close")[0];
              // When the user clicks on <span> (x), close the modal
                          span.onclick = function() {
                          modal.style.display = "none";
                          }


</script>
</body>
</html>