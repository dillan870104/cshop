<html>

<%@page contentType="text/html" %>
<%@page import="java.sql.*" %>
<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
		
		<%  		
		
    try
	{
		
		try
		{ 
			String url="jdbc:mysql://localhost/myDatabase?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
			String sql="";
			Connection con=DriverManager.getConnection(url,"root","1234");

			String Cusname=new String(request.getParameter("cusname").getBytes("ISO-8859-1"),"UTF-8");
			String sex=request.getParameter("sex");
			String birthday=request.getParameter("date");
			String login=request.getParameter("id");
			String password=request.getParameter("pwd");
			String password2=request.getParameter("pwd2");
			String email=request.getParameter("email");
			String address=new String(request.getParameter("address").getBytes("ISO-8859-1"),"UTF-8");
			String phone=request.getParameter("phone");
		Class.forName("com.mysql.jdbc.Driver");
		
			if(con.isClosed())
				out.println("連線建立失敗");
			else if(!password.equals(password2))
			{
					%>
					<script language="javascript">
					alert('密碼確認錯誤');window.location = 'register.jsp';
					</script>
					<%
			} 
			else
			{	
				
				sql="use myDatabase";  
				con.createStatement().execute(sql);     
				sql="Select customer_login From customer Where customer_login='"+login+"'";
				ResultSet tmp =  con.createStatement().executeQuery(sql);
				if(tmp.next())
				{
					%>
					<script language="javascript">
					alert('帳號有人用過囉');window.location = 'register.jsp';
					</script>
					<%
				}
				else{
                sql = "INSERT customer(customer_name,customer_tel,customer_address,customer_login,customer_password,customer_email,customer_birthday) " +
                "VALUES ('"+Cusname+"','"+phone+"','"+address+"','"+login+"','"+password+"','"+email+"','"+birthday+"')";
				con.createStatement().execute(sql); 
				out.print(password+"<br>");
				out.print(password2+"<br>");
					%>
					<script language="javascript">
					window.location = 'register_finish.jsp';
					</script>
					<%
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
		 </html>