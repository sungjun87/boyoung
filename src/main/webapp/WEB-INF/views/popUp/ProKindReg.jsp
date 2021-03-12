<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 종류 등록</title>
<script type="text/javascript">
function kindReg(){
	if($('#KindName').val()!=""){
		var params = {
			PRO_KIND_NAME : $('#KindName').val(),
			PRO_KIND_FORMAT : $('#KindFormat').val(),
			PRO_KIND_POSITION : $('#KindPosition').val(),
			PRO_KIND_REFERENCE : $('#KindReference').val()
		};
		$.ajax({
				
			type : 'POST',
			url : '/KindReg',
			data : params,
			datatype : 'json',
			async : false,
			success : function(data){
				if(data.result == 1){
					alert("등록이 완료되었습니다.");
					window.close();
				}else{
					alert("등록에 실패하였습니다.");
				}
			}
			
		});
		
	}else{
		alert("상품 종류명을 입력하시오.");
		return;
	}
	
	
}

</script>
</head>
<body>
	<article class="container">
            <div class="page-header">
                <div class="col-md-6 col-md-offset-3">
                <h3>상품 종류 등록</h3>
                </div>
            </div>
            <div class="col-sm-6 col-md-offset-3">
                <form role="form">
                    <div class="form-group">
                        <label for="KindName">상품 종류명</label>
                        <input type="text" class="form-control" id="KindName" placeholder="종류를 입력해 주세요">
                    </div>
                    <div class="form-group">
                        <label for="KindFormat">품명 형식</label>
                        <input type="text" class="form-control" id="KindFormat" placeholder="품명의 형식을 입력해주세요">
                    </div>
                    <div class="form-group">
                        <label for="KindPosition">카탈로그 위치</label>
                        <input type="text" class="form-control" id="KindPosition" placeholder="카달로그 위치를 입력해 주세요">
                    </div>
                    <div class="form-group">
                        <label for="KindReference">참고 사항</label>
                        <input type="text" class="form-control" id="KindReference" placeholder="참고사항을 입력해 주세요">
                    </div>

                    <div class="form-group text-center">
                        <button type="submit" id="join-submit" class="btn btn-primary" onclick="kindReg()">
                            등록<i class="fa fa-check spaceLeft"></i>
                        </button>
                        <button type="submit" class="btn btn-warning">
                            등록취소<i class="fa fa-times spaceLeft"></i>
                        </button>
                    </div>
                </form>
            </div>

        </article>





</body>
</html>