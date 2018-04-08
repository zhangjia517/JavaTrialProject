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

	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	   String sql = "update friend set name = '"+name+"',tel = '"+tel+"' where id = "+id;  
	int flag = statement.executeUpdate(sql);
	if (flag != 0) {
		out.println("<script>alert('插入成功！');history.go(-1);</script>");
	} else {
		out.println("<script>alert('插入失败！');history.go(-1);</script>");
	}
	statement.close();  
%>