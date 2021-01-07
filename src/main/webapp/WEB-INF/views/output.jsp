<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>
<c:forEach var="dto" items="${list}">
		<button type="button" id="btn-update-${dto.seq}">수정</button>
		<button type="button" id="btn-delete-${dto.seq}">삭제</button>
</c:forEach>

	<script>
	<c:forEach var="dto" items="${list}">
		$("#btn-update-${dto.seq}").on("click", function() {
			$.ajax({
				data : {
	    			seq: ${dto.seq},
	    			message: ${dto.message}
	    		},
				type : "post",
				url : "/person/update.person", 
				success: function(data){
					console.log("data : " + data);
					console.log("수정성공");
				}
			})
		})
		
		$("#btn-delete-${dto.seq}").on("click", function() {
			$.ajax({
				data : {
	    			seq: ${dto.seq},
	    		},
				type : "post",
				url : "/person/delete.person", 
				success: function(data){
					console.log("data : " + data);
					console.log("삭제성공");
				}
			})
		})
	</c:forEach>	
	</script>
</body>
</html>