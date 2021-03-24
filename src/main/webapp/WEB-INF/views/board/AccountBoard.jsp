<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거래처 게시판</title>
<script type="text/javascript">
// 	$(document).ready(function(){
// 		$('#table_acc').DataTable();
		
// 	});
	function openPop(){
		var popupWidth = 500;
		var popupHeight = 1100;  
		var popupY = (window.screen.height/2) - ( popupHeight / 2);
		var popupX = (window.screen.width/2) - (popupWidth/2);
		var options = "width ="+popupWidth+",height="+popupHeight+",left="+popupX+",top="+popupY;
		window.open("/AccountRegPopup","종류 등록",options);
		
	}

	function delAccount(){
		if($('input[type="checkbox"]:checked').length==1){
			var exam = $('input[type="checkbox"]:checked').val();
			var params = {
					COM_CODE : exam
			}
			$.ajax({
				type : 'POST',
				url : '/AccountDel',
				data : params,
				datatype : 'json',
// 				async : false,
				success : function(data){
					if(data.result >= 1){
						alert("삭제가 완료되었습니다.");
					}else{
						alert("삭제에 실패하였습니다.");
					}
				}
			});
		}else{
			alert("하나의 값만 체크해주세요.");
		}
	}
	
</script>
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
						<c:forEach var="Acc" items="${Account }">
							<tr>
								<td><input type="checkbox" name="AccCheck" value="${Acc.COM_CODE }"></td>
								<td><c:out value="${Acc.COM_NAME} "></c:out></td>
								<td><c:out value="${Acc.COM_ADDR} "></c:out></td>
								<td><c:out value="${Acc.COM_MASTER} "></c:out></td>
								<td><c:out value="${Acc.COM_REG_NUMBER}"></c:out></td>
								<td><c:out value="${Acc.COM_AREA}"></c:out></td>
								<td><c:out value="${Acc.COM_NUMBER}"></c:out></td>
								<td><c:out value="${Acc.COM_PHNUMBER}"></c:out></td>
								<td><c:out value="${Acc.COM_USING_CHECK}"></c:out></td>
								<td><c:out value="${Acc.COM_REFERENCE}"></c:out></td>
							</tr>
						</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>