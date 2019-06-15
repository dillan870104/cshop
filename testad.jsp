<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>隨機廣告</title>
</head>
<body>
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
</body>
</html>
