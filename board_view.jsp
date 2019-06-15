<!-- Step 0: import library -->
<%@page contentType="text/html" %>
<%@page import="java.sql.*" %>
<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=big5">
<head>
<title>列出所有留言</title>
</head>
<body>
<a href="board.jsp">寫寫留言</a><p>
<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線  
        String url="jdbc:mysql://localhost/myDatabase?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="use mydatabase";
           con.createStatement().execute(sql);
//Step 4: 執行 SQL 指令, 若要操作記錄集, 需使用executeQuery, 才能傳回ResultSet  
           sql="select * from board"; //算出共幾筆留言
           ResultSet rs=con.createStatement().executeQuery(sql);

           //先移到檔尾, getRow()後, 就可知道共有幾筆記錄
           rs.last();
           int total_content=rs.getRow();
           out.println("共"+total_content+"筆留言<p>");
           
           //每頁顯示5筆, 算出共幾頁
           int page_num=(int)Math.ceil((double)total_content/5.0); //無條件進位
       if (page_num==0) //無留言時將頁數指標訂為1
           page_num=1;
           out.println("請選擇頁數");
           //使用超連結方式, 呼叫自己, 使用get方式傳遞參數(變數名稱為page)
           for(int i=1;i<=page_num;i++) //使用get傳輸方式,建立1,2,...頁超連結
              {
         out.print("<a href='view.jsp?page="+i+"'>"+i+"</a>&nbsp;"); //&nbsp;html的空白
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
          out.println("Sucess");
        //   int start_record=(current_page-1)*5;
           //遞減排序, 讓最新的資料排在最前面
        //   sql="SELECT * FROM board ORDER BY no DESC LIMIT ";//LIMIT是限制傳回筆數
       //    sql+=start_record+",5";
           //上述語法解讀如下:
           // current_page... select * from guestbook order by no desc limit
           //      current_page=1: select * from guestbook order by no desc limit 0, 5 //從第0筆顯示5筆
           //      current_page=2: select * from guestbook order by no desc limit 5, 5 //從第5筆顯示5筆
           //      current_page=3: select * from guestbook order by no desc limit 10, 5//從第10筆顯示5筆
      
           rs=con.createStatement().executeQuery(sql);
       
//  逐筆顯示, 直到沒有資料(最多還是5筆)
           while(rs.next())
                {
                 //out.println("留言主題:"+rs.getString(4)+"<br>");
        // out.println("留言主題:"+rs.getString("subject")+"<br>");
                 //out.println("訪客姓名:"+rs.getString(2)+"<br>");
        // out.println("訪客姓名:"+rs.getString("name")+"<br>");
                 //out.println("E-mail:"+rs.getString(3)+"<br>");
        // out.println("E-mail:"+rs.getString("mail")+"<br>");
                 //out.println("留言內容:"+rs.getString(5)+"<br>");
         out.println("留言內容:"+rs.getString("content"));
                 //out.println("留言時間:"+rs.getString(6)+"<br><hr>");
         //out.println("留言時間:"+rs.getString("putdate")+"<br><hr>");
          }
//Step 6: 關閉連線
          con.close();
      }
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤QQ");
    }
}
catch (ClassNotFoundException err) {
      out.println("class錯誤");
}
%>
</body>
</html>
