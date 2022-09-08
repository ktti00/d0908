<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
<%
	
	request.setCharacterEncoding("utf-8");
	String id=request.getParameter("id");
	String password=request.getParameter("passwd");
	String name=request.getParameter("name");
	
	String sql="insert into membertable(id,password,name) values(?,?,?)";
	PreparedStatement pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,id);
	pstmt.setString(2,password);
	pstmt.setString(3,name);
	
	pstmt.executeUpdate();
	System.out.println("저장성공");
	
	System.out.println("아이디: "+id);
	System.out.println("비밀번호: "+password);
	System.out.println("이름: "+name);
%>
<h1>아이디 : <%=id %></h1>
<h1>비밀번호 : <%=password %></h1>
<h1>이름 : <%=name %></h1>
</body>
</html>