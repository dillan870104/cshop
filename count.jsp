<%@ page import = "java.io.*"%>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<head>
<title>計數器</title>
</head>
<body>
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

</body>
</html>