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
		<button type="button" id="btn-update" data-seq="${dto.seq}" data-message>수정</button>
		<button type="button" id="btn-delete">삭제</button>

	<script>
		$("#btn-update").on("click", function() {
			$.ajax({
				data : {
	    			seq: $("#btn-update").data("seq"),
	    			message: $("#btn-update").data("message")
	    		},
				type : "post",
				url : "/person/update.person", 
				success: function(data){
					console.log("성공");
				}
			})
		})
	</script>
</body>
</html>