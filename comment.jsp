<html>

<%@page contentType="text/html" %>
<%@page import="java.sql.*" %>
<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>


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

           //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1")編碼
            // String product_no = resquest.getParameter("product_no");
           // String product_no = "001";
             String content=new String(request.getParameter("user_mes").getBytes("ISO-8859-1"),"UTF-8");
            Object ppp2 = session.getAttribute("ppp");
             java.sql.Date putdate=new java.sql.Date(System.currentTimeMillis());
             
//Step 4: 執行 SQL 指令	
    //      sql="insert guestbook (name, mail, subject, content, putdate) ";
    //	      sql="insert board (no,content,name,subject,reply)"+"VALUES ('"+no+"','"+content+"','"+name+"','"+subject+"','"+reply+"')";
    //        out.println(+content+);
          //    sql="insert board (product_no,content,putdate)"+"VALUES ('"+product_no+"','"+content+"','"+putdate+"')";
           sql="insert board (pro,content,putdate)"+"VALUES ('"+ppp2+"','"+content+"','"+putdate+"')";
           con.createStatement().execute(sql);
            out.println(sql);
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
    //       response.sendRedirect("view.jsp?page=1");
    %>
					<script language="javascript">
					window.location = 'index2.jsp';

					</script>    
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
</body>
</html>