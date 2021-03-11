<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 종류</title>
<script type="text/javascript">
	function openPop(){
		var popupWidth = 500;
		var popupHeight = 600;
		
		var popupX = (window.screen.width/2)-(popupWidth/2);
		
		var popupY = (window.screen.height/2)-(popupHeight/2);
		var options = "width ="+popupWidth+",height="+popupHeight+",left="+popupX+",top="+popupY;
// 		window.open("/proKindReg","종류 등록",'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top);
// 		window.open("/proKindReg","종류 등록","width=400 , height = 500");
		window.open("/proKindReg","종류 등록",options);
	}
</script>
</head>
<body>
	<div class="MainLayout">
		<div class="MainContent">
			<div class="NavBtn">
				<input type="button" class="btn btn-primary RegBtn" value="등록" onclick="openPop()">
			</div>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>종류</th>
						<th>비고</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>헤어집게</th>
						<th>머리에 하는 집게</th>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>