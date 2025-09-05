<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="form" action="Emp-Add-Result.jsp">
		<div>
			사번 : <input name="empNo">
			<input type="button" value="중복체크" onclick="fnCheck()">
		</div>
		<div>
			이름 : <input name="empName">
		</div>
		<div>
			급여 : <input name="sal">
		</div>
		<div>
			<input name="deptNo" type="radio" value="10" checked> ACCOUNTING
			<input name="deptNo" type="radio" value="20"> RESEARCH
			<input name="deptNo" type="radio" value="30"> SALES
			<input name="deptNo" type="radio" value="40"> OPERATIONS
		</div>
		<div>
			<input type="button" value="추가" onclick="fnAdd()">
		</div>
	</form>
</body>
</html>
<script>
	function fnAdd(){
		let form = document.form;
		form.submit();
	}
	
	function fnCheck(){
		let form = document.form;
		let empNo = form.empNo.value;
		window.open(`Emp-Check.jsp?empNo=\${empNo}`, "check", "width=500, height=500");
	}
	
	function fnReturn(flg){
		if(flg == "N"){
			
		}
	}
	
</script>









