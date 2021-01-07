<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input</title>
<style>
	.container{
		border: 1px solid black;
		margin: auto;
	}
</style>
</head>
<body>
	<div class=container>
    <form action="input.person" class=box>
        Name : <input type=text name=name>
        Message : <textarea name=message></textarea>
        <button>전송</button>
    </form>
</div>
</body>
</html>