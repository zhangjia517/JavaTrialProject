<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript">
	function UpdateData(name) {
		alert(name);
	}

	function DeleteData(name) {
		alert(name);
	}
</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询所有数据</title>
</head>
<body>
	<%
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
		String sql = "SELECT * FROM " + tableName;
		ResultSet rs = statement.executeQuery(sql);
	%>

	<div align="center">
		<h2>foskill_address_book</h2>
		<table class="dataList" border="1">
			<thead>
				<tr>
					<th>Name</th>
					<th>Tel</th>
					<th>Operation</th>
				</tr>
			</thead>
			<tbody>
				<%
					while (rs.next()) {
				%>
				<tr>
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
						<form action='operate/selectData.jsp?mydata=<%=rs.getString(1)%>' method="post">
							<input type="submit" value="改">
						</form>
					</td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>