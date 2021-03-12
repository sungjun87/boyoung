<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 종류</title>
<script type="text/javascript">
	function openPop(){
		var popupWidth = 400;
		var popupHeight = 500; 
		var popupY = (window.screen.height/2) - ( popupHeight / 2);
		var popupX = (window.screen.width/2) - (popupWidth/2);
		var options = "width ="+popupWidth+",height="+popupHeight+",left="+popupX+",top="+popupY;
		window.open("/proKindReg","종류 등록",options);
	} 
	
// 	function delKind(){
// 		alert("호출은 되는거지?");
// 		$('input[type="checkbox"]:checked').each(function(index){
// 			var params = {
// 					PRO_KIND_CODE = $(this).val();
// 			}
// 		});	
		
// 		$.ajax({
// 			type : 'POST',
// 			url : '/KindDel',
// 			data : params,
// 			datatype : 'json',
// 			async : false,
// 			success : function(data){
// 				if(data.result == 1){
// 					alert("삭제가 완료되었습니다.");
// 					window.close();
// 				}else{
// 					alert("삭제에 실패하였습니다.");
// 				}
// 			}
			
// 		});
// 	}
</script>



<link rel="stylesheet" href="/resources/css/MainCss.css">
</head>
<body>
	<div class="MainLayout">
		<div class="MainContent">
			<div class="ContentTitle">
				<h2>제품 종류</h2>
			</div>
			<div class="NavBtn">
				<input type="button" class="btn btn-primary RegBtn" value="등록" onclick="openPop()">
				<input type="button" class="btn btn-primary RegBtn" value="삭제" onclick="delKind()">
				<input type="button" class="btn btn-primary RegBtn" value="수정" onclick="openPop()">
			</div>
			<table class="table table-striped">
				<thead>
					<tr>
						<th></th>
						<th>제품 종류명</th>
						<th>종류 품명 형식</th>
						<th>카탈로그 위치</th>
						<th>참고사항</th>
					</tr>
				</thead>
				<tbody>
						<c:forEach var="Kind" items="${ProKind }">
							<tr>
								<td><input type="checkbox" value="${Kind.PRO_KIND_CODE }"></td>
								<td><c:out value="${Kind.PRO_KIND_NAME} "></c:out></td>
								<td><c:out value="${Kind.PRO_KIND_FORMAT} "></c:out></td>
								<td><c:out value="${Kind.PRO_KIND_POSITION} "></c:out></td>
								<td><c:out value="${Kind.PRO_KIND_REFERENCE}"></c:out></td>
							</tr>
						</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>