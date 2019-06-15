<%@page contentType="text/html" %>
<%@page import="java.sql.*" %>
<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%  		
        try {
//Step 1: 載入資料庫驅動程式 
            Class.forName("com.mysql.jdbc.Driver");	  
            try {
//Step 2: 建立連線 
				String sql="";
                String url="jdbc:mysql://localhost/";
                Connection con=DriverManager.getConnection(url,"root","1234");   				
	        if(con.isClosed())
                    out.println("連線建立失敗");
                else
                {	
//Step 3: 選擇資料庫
                     
					Object Cname = session.getAttribute("Cname");
					Object n1 = session.getAttribute("n1");
					Object n2 = session.getAttribute("n2");
					Object n3 = session.getAttribute("n3");
					Object n4 = session.getAttribute("n4");
					Object n5 = session.getAttribute("n5");
					Object n6 = session.getAttribute("n6");
					Object n7 = session.getAttribute("n7");

					out.print(n1);
					out.print(n2);
					out.print(n3);
					out.print(n4);
					out.print(n5);
					out.print(n6);
					out.print(n7);
					sql="use myDatabase";  
					con.createStatement().execute(sql);
					sql="Delete From customer Where customer_name='"+Cname+"' ";
					int rec = con.createStatement().executeUpdate(sql);
					/*sql = "INSERT customer(customer_name,customer_tel,customer_address,customer_login,customer_password,customer_email,customer_birthday) " +
                    "VALUES ('"+Cname+"','"+n2+"','"+n3+"','"+n4+"','"+n5+"','"+n6+"','"+n7+"')";*/
					
				     
                sql = "INSERT customer(customer_name,customer_tel,customer_address,customer_login,customer_password,customer_email,customer_birthday) " +
                "VALUES ('"+Cname+"','"+n2+"','"+n3+"','"+n4+"','"+n5+"','"+n6+"','"+n7+"')";
				con.createStatement().execute(sql); 
 


//Step 4: 執行 SQL 指令        
                    /*String sql = "Select customer_no,customer_name,customer_tel,customer_address,customer_login,customer_password,customer_email,customer_birthday From customer Where customer_name='"+Cname+"'";
					ResultSet tmp =  con.createStatement().executeQuery(sql);
//Step 5: 顯示結果       
					          
                    while(tmp.next()){			
		    //一筆一筆讀取資料，如果回傳false,表示資料讀取完畢。
		    //用回圈印出結果，getString(1)表示id,getString(2)表示name,依此類推
							String csno=tmp.getString(1);
							String csname=tmp.getString(2);
							String cstel=tmp.getString(3);
							String csadd=tmp.getString(4);
							String cslog=tmp.getString(5);
							String csps=tmp.getString(6);
							String csem=tmp.getString(7);
							String csbir=tmp.getString(8);
							         
           }*/
							
//Step 6: 關閉連線
                    //con.close();
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