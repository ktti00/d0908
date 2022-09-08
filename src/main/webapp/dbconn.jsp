<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn = null;

	String driver="com.mysql.cj.jdbc.Driver";
	String url="jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
	String user="root";
	String pass="1234";
	try{
	Class.forName(driver);
	conn= DriverManager.getConnection(url,user,pass);
		System.out.println("연결 성공");
	}catch(Exception e){
		System.out.println("database 에러");
		e.printStackTrace(); 
	}
%>
</body>
</html>