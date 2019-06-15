<%@page contentType="text/html" %>
<%@page import="java.sql.*" %>
<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body> 

<%  	
    try {
		//Step 1: 載入資料庫驅動程式 
        	Class.forName("com.mysql.jdbc.Driver");	  
		//使用JDBC去連結MySQL，所以該行語法的意思，就是要告訴電腦我要使用JDBC
        try {
			String login=request.getParameter("id");
			String password=request.getParameter("pwd");
			boolean a=false;
			boolean b=false;
		//Step 2: 建立連線 
        	String url="jdbc:mysql://localhost/myDatabase?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
            Connection con=DriverManager.getConnection(url,"root","1234");   
		//建立connection(連線)的語法，url代表我所要連結的MySQL所在IP，root是帳號，1234是密碼
		//此連線是指和mySql連線，不是和存在mySql內的特定資料庫連線。		
				if(request.getParameter("id") !=null && request.getParameter("pwd") != null)
				{
		//Step 3: 選擇資料庫	
                    	con.createStatement().execute("USE mydatabase");
		//Step 4: 執行 SQL 指令 
                    	String sql = "SELECT customer_no,customer_login, customer_password ,customer_name FROM customer" ;
                    	ResultSet tmp =  con.createStatement().executeQuery(sql);
		//Step 5: 顯示結果                    
                    	while(tmp.next()){			
		//一筆一筆讀取資料，如果回傳false,表示資料讀取完畢。
		//用回圈印出結果，getString(1)表示id,getString(2)表示name,依此類推

							if(tmp.getString(2).equals(login)&&tmp.getString(3).equals(password))
							{
								
								if(tmp.getString(1).equals("1"))
								{
									a=true;
								}
								else{
									b=true;
									String Cname=tmp.getString(4);
									session.setAttribute("Cname", Cname);
								}
							
							}

						
		//每次印完一次資料，就印分隔線區隔。
		    				}
							if(a==true)
							{
								%>
								<script language="javascript">window.location = 'admin.jsp';</script>
								<%
							}
							else if(b==true)
							{
								
								%>
								<script language="javascript">window.location = 'index2.jsp';</script>
								<%	
								
							}
								else
							{
							%>
								<script language="javascript">window.location = 'log_in.jsp';</script>

							<%
							}
							
							
				}
					else
					{
						%>
					<script language="javascript">window.location = 'log_in.jsp';</script>
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
    </body>
</html>
