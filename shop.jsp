<%@page contentType="text/html" %>
<%@page import="java.sql.*" %>
<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


	  <%  	
    try {
//Step 1: 載入資料庫驅動程式 
	  
	//使用JDBC去連結MySQL，所以該行語法的意思，就是要告訴電腦我要使用JDBC
        try {
			String url="jdbc:mysql://localhost/myDatabase?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
			String sql="";
			Connection con=DriverManager.getConnection(url,"root","1234");   
			Object prono = session.getAttribute("prono");
			
			String size=request.getParameter("size");
			String amount=request.getParameter("amount");
			

			Class.forName("com.mysql.jdbc.Driver");
			
			if(con.isClosed())
				out.println("連線建立失敗");
			else
			{
				out.print("編號: "+prono+"<br>");
				out.print("大小: "+size+"<br>");
				out.print("尺寸: "+amount+"<br>");

							
				
			sql="use myDatabase";  
			con.createStatement().execute(sql);     
            sql = "INSERT shop(pdno,amount,size) " +
            "VALUES ('"+prono+"','"+amount+"','"+size+"')";
			con.createStatement().execute(sql); 

			
								%>
								<script language="javascript">window.location = 'shopping_cart.jsp';</script>
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
