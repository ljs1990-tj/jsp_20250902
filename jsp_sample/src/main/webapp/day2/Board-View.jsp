<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board-View.jsp</title>
<style>
	#container{
		width: 700px;
		margin : 20px auto;
	}
	table, tr, td, th {
		border : 1px solid black;
		text-align: center;
		border-collapse: collapse;
		padding : 5px 10px;
	}
	th {
		background-color: #ccc;
		width : 100px;
	}
	td {
		width : 500px;
	}
	.contents {
		height : 300px;
	}
</style>
</head>
<body>
	<%@ include file="../db/db.jsp" %>
	<div id="container">
	<%
		ResultSet rs = null;
		String boardNo = request.getParameter("boardNo");
		String query = "SELECT * FROM TBL_BOARD "
					 + "WHERE BOARDNO = " + boardNo;
		
		rs = stmt.executeQuery(query);
		if(rs.next()){
	%>
		<table>
			<tr>
				<th>제목</th>
				<td><%= rs.getString("TITLE") %></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><%= rs.getString("USERID") %></td>
			</tr>
			<tr>
				<th>작성일</th>
				<td><%= rs.getString("CDATETIME") %></td>
			</tr>
			<tr>
				<th>내용</th>
				<td class="contents"><%= rs.getString("CONTENTS") %></td>
			</tr>
		</table>
	<%		
		} else {
			out.println("게시글 조회에 실패했습니다.");
		}
		
		
	
	%>
	</div>	
	
</body>
</html>



