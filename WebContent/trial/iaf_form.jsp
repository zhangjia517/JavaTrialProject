<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>IAF of Java Dynamic Web Project</title>
<link rel="stylesheet" href="../css/style.css" type="text/css">
</head>
<body>
	<%
		String driverName = "com.mysql.cj.jdbc.Driver";
		String userName = "root";
		String userPasswd = "88287404";
		String dbName = "iceandfire";
		String tableName = "iaf_character_attribute";

		String url = "jdbc:mysql://www.fostudio.cn:3306/" + dbName
				+ "?characterEncoding=utf8&useSSL=true&serverTimezone=UTC";
		Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
		Connection connection = DriverManager.getConnection(url, userName, userPasswd);
		Statement statement = connection.createStatement();
		String sql = "SELECT * FROM " + tableName;
		ResultSet rs = statement.executeQuery(sql);
	%>
	<br>
	<br>
	<div id="container">
		<table class="zebra">
			<caption>冰与火之歌人物属性</caption>
			<thead>
				<tr>
					<th>
						<%
							out.print("id");
						%>
					</th>
					<th>
						<%
							out.print("领地");
						%>
					</th>
					<th>
						<%
							out.print("人物");
						%>
					</th>
					<th>
						<%
							out.print("统御");
						%>
					</th>
					<th>
						<%
							out.print("武勇");
						%>
					</th>
					<th>
						<%
							out.print("智谋");
						%>
					</th>
					<th>
						<%
							out.print("内政");
						%>
					</th>
					<th>
						<%
							out.print("综合");
						%>
					</th>
				</tr>
			</thead>

			<tbody>
				<%
					while (rs.next()) {
				%>
				<tr>
					<td>
						<%
							out.print(rs.getString(1));
						%>
					</td>
					<td>
						<%
							out.print(rs.getString(2));
						%>
					</td>
					<td>
						<%
							out.print(rs.getString(3));
						%>
					</td>
					<td>
						<%
							out.print(rs.getString(4));
						%>
					</td>
					<td>
						<%
							out.print(rs.getString(5));
						%>
					</td>
					<td>
						<%
							out.print(rs.getString(6));
						%>
					</td>
					<td>
						<%
							out.print(rs.getString(7));
						%>
					</td>
					<td>
						<%
							out.print(rs.getString(8));
						%>
					</td>
				</tr>
			</tbody>
			<%
				}
			%>
		</table>
	</div>

	<div align="center">
		<br>
		<%
			out.print("数据查询成功");
		%>
		<a href=index.jsp> Back </a>
		<br> <br>
	</div>
	<%
		rs.close();
		statement.close();
		connection.close();
	%>

</body>
</html>