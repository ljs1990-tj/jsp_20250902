<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>7_DB-Delete.jsp</title>
</head>
<body>
	<%@ include file="../db/db.jsp" %>
	<%
		// 학번 20153075 삭제
		String stuNo = "20153075";
		String query = "DELETE FROM STUDENT WHERE STU_NO = '" + stuNo + "'";
		int result = stmt.executeUpdate(query);
		
		if(result > 0){
			out.println("삭제되었습니다.");
		} else {
			out.println("없는 학번 입니다.");
		}
		
	%>





</body>
</html>