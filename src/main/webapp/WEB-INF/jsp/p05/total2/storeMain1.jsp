<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>배탈의 민족</title>
</head>
<body>
	<%--가장 큰 틀 --%> 
	<div id="wrap" class="container">
		<%--(배탈의 민족) 메인 상단 바 --%>
		<header class="d-flex w-100 " style="height:50px; background-color:#00afbf;">
			<h3 class="text-white align-self-center pl-3">배탈의 민족</h3>
		</header>
		<%-- (우리동네 가게) ~~~ 푸터 위에 --%>
		<section class="w-100" style="height:800px; overflow:scroll;">
			
			<h1>우리동네 가게</h1>
			
				<c:forEach var="Store" items="${store }" varStatus="status">
					<%-- 반복, 초록 테두리 버튼 1개 --%>
					<a href="#" class="text-dark">
						<%-- 초록 테두리 박스 1개 --%>
						<div class="container w-100 p-2" style="height:120px; border:1px solid #00afbf" >
							<label ><h4>${Store.name }</h4></label>
							<p>
								<label>${Store.phoneNumber }</label>
								<br>
								<label>${Store.address }</label>
								
							</p>
							
						</div>
					</a>
					<br>
				</c:forEach>
			
		</section>
		
		<%--그냥 푸터 --%>
		<hr><footer>
			<b>(주)우와한형제</b><br>
			<label class="text-secondary">고객센터:1500-1500</label>
		</footer>
	
	
	</div>
</body>
</html>