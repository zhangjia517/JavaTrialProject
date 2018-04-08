<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP_Grammar</title>
<script type='text/javascript' src='../dwr/engine.js'></script>
<script type='text/javascript' src='../dwr/util.js'></script>
<script type='text/javascript' src='../dwr/interface/GetMD5.js'></script>
<script type='text/javascript' src='../dwr/interface/GetBTCJson.js'></script>
<script type="text/javascript">
	function GetMD5FS() {
		var tempStr = document.firstForm.search.value;
		GetMD5.getMD5(tempStr, function(data) {
			alert(data);
		});
	}
	
	function GetBTCLast() {
		GetBTCJson.getLast(function(data) {
			alert(data);
		});
	}
</script>
</head>
<body>
	<!-- MD5查询 -->
	<form name="firstForm">
		键入： <input type="text" name="search" />&nbsp;&nbsp;<input
			type="button" value="MD5加密" onclick="GetMD5FS()" />
	</form>
	
	<p>
	<button type="button" onclick="GetBTCLast()">比特币交易网最新成交价</button>
	</p>

	<!-- 日期IFELSE/SWITCH -->
	<p>
		<%!java.util.Calendar c = java.util.Calendar.getInstance();
	int dayOfWeek = c.get(java.util.Calendar.DAY_OF_WEEK);%>
		日期:<%=c.getTime().toString()%>
		&nbsp;&nbsp;
		<%
			if (dayOfWeek == 1 | dayOfWeek == 7) {
		%>
		Today is weekend
		<%
			} else {
		%>
		Today is not weekend
		<%
			}
		%>
		&nbsp;&nbsp;
		<%
			switch (dayOfWeek) {
			case 1:
				out.println("It\'s Sunday!");
				break;
			case 2:
				out.println("It\'s Monday!");
				break;
			case 3:
				out.println("It\'s Tuesday!");
				break;
			case 4:
				out.println("It\'s Wednesday!");
				break;
			case 5:
				out.println("It\'s Thursday!");
				break;
			case 6:
				out.println("It\'s Friday!");
				break;
			default:
				out.println("It's Saturday!");
			}
		%>
	</p>

	<!-- WHILE -->
	<p>
		<%!int fontSize;%>
		<%
			for (fontSize = 2; fontSize <= 4; fontSize++) {
		%>
		<font color="Black" size="<%=fontSize%>"> Fostudio </font><br />
		<%
			}
		%>
	</p>

	<!-- None -->
	<p></p>

	<!-- None -->
	<p></p>

	<!-- None -->
	<p></p>

	<!-- None -->
	<p></p>

	<!-- None -->
	<p></p>

	<!-- None -->
	<p></p>
</body>
</html>