<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.container{
		border: 1px solid black;
		margin: auto;
	}
</style>
</head>
<body>
	<div class=container>
		<input type=button value="메세지 입력" id=input>
		<input type=button value="메세지 읽기" id=output>
	</div>
	<script>
	let input = document.getElementById("input");
	input.onclick = function() {
       location.href = "/person/toInput.person";
    }
	let output = document.getElementById("output");
	output.onclick = function() {
       location.href = "/person/toOutput.person";
    }
	</script>
</body>
</html>