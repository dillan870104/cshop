<%@page contentType="text/html" %>
<%@page import="java.sql.*" %>
<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%  		
		
    try
	{
		
		try
		{ 
			String url="jdbc:mysql://localhost/myDatabase?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
			Connection con=DriverManager.getConnection(url,"root","1234");
			String sql="";


			
		Class.forName("com.mysql.jdbc.Driver");
		
			if(con.isClosed())
				out.println("連線建立失敗");
			else{
				        sql ="SELECT* FROM shop";
						ResultSet tmp =  con.createStatement().executeQuery(sql);
						con.createStatement().execute(sql); 
						while (tmp.next())
						{
							out.print("產品編號:'"+tmp.getString(2)+"'<br>");
							out.print("購買數量為:'"+tmp.getString(3)+"'<br>");
							out.print("大小為:+'"+tmp.getString(4)+"'<br>");
                        out.println("---------------------------------------------------------------------------------<BR><br>");
							
							
						}
				
			}
					
			
		}		

		catch (SQLException sExec) 
		{
			out.println("SQL錯誤"+sExec.toString());
		}
	}	
	catch (ClassNotFoundException err)
	{
		out.println("class錯誤"+err.toString());
	}
			
	%>