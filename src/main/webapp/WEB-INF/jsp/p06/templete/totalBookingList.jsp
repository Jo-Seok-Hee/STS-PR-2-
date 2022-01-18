<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="text-center">
			<h1 class="pt-3">예약 목록 보기</h1>
			<table class="table">
				<thead>
					<tr>
						<th>이름</th>
						<th>예약날짜</th>
						<th>숙박일수</th>
						<th>숙박인원</th>
						<th>전화번호</th>
						<th>예약상태</th>
					</tr>
				</thead>
				<tbody>
					<%--반복 시작 select DB--%>
					<c:forEach var="book" items="${Book }" varStatus="status">
						<tr>
							<td>${book.name }</td>
							<td>
								<fmt:formatDate var="date" value="${book.date }" pattern="yyyy년 MM월 dd일"></fmt:formatDate>
								${date }
							</td>
							<td>${book.day }</td>
							<td>${book.headcount }</td>
							<td>${book.phoneNumber }</td>
							<td class="text-success">${book.state }</td>
							<td><button type="button" class="bg-danger text-white">삭제</button></td>
						</tr>
					<%--반복 끝 --%>
					</c:forEach>
				</tbody>

			</table>
			
			
		</div>