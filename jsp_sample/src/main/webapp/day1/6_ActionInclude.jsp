<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Include</title>
</head>
<body>
	<!-- 디렉티브 -->
	<!-- 파일을 한곳에 다 모은다음 컴파일(실행) -->
	<%@ include file="Variable.jsp" %>
	
	<!-- 액션태그 -->
	<!-- 각 파일에서 먼저 컴파일(실행)하고 그 결과를 모와서 출력 -->
	<%-- <jsp:include page="Variable.jsp"></jsp:include> --%>
	
	<%= num1+num2 %>
	
</body>
</html>