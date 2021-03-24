<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>발주서 게시판</title>
</head>
<body>
	<div class="MainLayout">
		<div class="MainContent">
			<div class="ContentTitle">
				<h2>제품 종류</h2>
			</div>
			<div class="NavBtn">
				<input type="button" class="btn btn-primary RegBtn" value="등록" onclick="openPop()">
				<input type="button" class="btn btn-primary RegBtn" value="삭제" onclick="delAccount()">
				<input type="button" class="btn btn-primary RegBtn" value="수정" onclick="openPop()">
			</div>
			<table class="table table-striped table-bordered" id="table_acc">
				<thead>
					<tr>
						<th></th>
						<th>회사명</th>
						<th>주소</th>
						<th>담당자</th>
						<th>사업자번호</th>
						<th>거래 물품</th>
						<th>TEL</th>
						<th>P.H</th>
						<th>방식</th>
						<th>비고</th>
					</tr>
				</thead>
				<tbody>

				</tbody>
			</table>
		</div>
	</div>
</body>
</html>