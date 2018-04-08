<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("mydata");

	String driverName = "com.mysql.cj.jdbc.Driver";
	String userName = "root";
	String userPasswd = "88287404";
	String dbName = "foskill_address_book";
	String tableName = "friend";

	String url = "jdbc:mysql://www.fostudio.cn:3306/" + dbName
			+ "?characterEncoding=utf8&useSSL=true&serverTimezone=UTC";
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	Connection connection = DriverManager.getConnection(url, userName, userPasswd);
	Statement statement = connection.createStatement();

	String sql = "select * from friend where id = " + id;
	ResultSet set = statement.executeQuery(sql);
	set.next();
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>更改数据</title>
</head>
<body>
	<form action="updateData.jsp?mydata=<%=id%>" method="post">
		<label>name</label>s <input type="text" name="name"
			value="<%out.print(set.getString("name"));%>"> <label>tel</label>
		<input type="text" name="tel"
			value="<%out.print(set.getString("tel"));%>"> <input
			type="submit" value="提交">
	</form>
	
	后退 <a href=../ListData.jsp>后退</a>&nbsp;
</body>
</html>
<%
	statement.close();
%>
