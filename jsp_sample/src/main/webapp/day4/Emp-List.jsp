<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Emp-List.jsp</title>
<style>
	#container{
		width: 700px;
		margin : 50px auto;
	}
	table, tr, td, th {
		border : 1px solid black;
		text-align: center;
		border-collapse: collapse;
		padding : 5px 10px;
	}
	th {
		background-color: #eee;
	}
	tr:nth-child(odd) {
		background-color: #edede3;
	}
</style>
</head>
<body>
	<%@ include file="db.jsp" %>
	<%
		// EMP 테이블 조회
		// 사원들의 급여등급 + 부서이름 포함해서 조회
		// EMP, SALGRADE, DEPT
		String query = "SELECT EMPNO, ENAME, JOB, SAL, DNAME, GRADE "
					 + "FROM EMP E "
					 + "INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO "
					 + "INNER JOIN SALGRADE S ON E.SAL BETWEEN LOSAL AND HISAL";
		ResultSet rs = stmt.executeQuery(query);
	%>
		<table>
			<tr>
				<th>사번</th>
				<th>이름</th>
				<th>직책</th>
				<th>급여</th>
				<th>부서이름</th>
				<th>급여등급</th>
			</tr>
		
	<%	
		while(rs.next()){
			
		}
	
	%>
	</table>
</body>
</html>



