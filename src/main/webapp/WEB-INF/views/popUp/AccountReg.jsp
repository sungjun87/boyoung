<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거래처 등록</title>
<script type="text/javascript">

function AccountReg(){
	if($('#AccountName').val()!=""){
		var params = {
			COM_NAME : $('#AccountName').val(),
			COM_ADDR : $('#AccountAddr').val(),
			COM_MASTER : $('#AccountMaster').val(),
			COM_REG_NUMBER : $('#AccountRegNumber').val(),
			COM_AREA : $('#AccountArea').val(),
			COM_NUMBER : $('#AccountNumber').val(),
			COM_PHNUMBER : $('#AccountPhnumber').val(),
			COM_USING_CHECK : $('#AccountUsingCheck').val(),
			COM_REFERENCE : $('#AccountReference').val()
		};
		$.ajax({
				
			type : 'POST',
			url : '/AccountReg',
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
		alert("거래쳐명을 입력하시오.");
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
                        <label for="AccountName">거래쳐 명</label>
                        <input type="text" class="form-control" id="AccountName" placeholder="회사명을 입력해 주세요">
                    </div>
                    <div class="form-group">
                        <label for="AccountAddr">주소</label>
                        <input type="text" class="form-control" id="AccountAddr" placeholder="주소를 입력해주세요">
                    </div>
                    <div class="form-group">
                        <label for="AccountMaster">담당자</label>
                        <input type="text" class="form-control" id="AccountMaster" placeholder="담당자를 입력해 주세요">
                    </div>
                    <div class="form-group">
                        <label for="AccountRegNumber">사업자 번호</label>
                        <input type="text" class="form-control" id="AccountRegNumber" placeholder="사업자 번호를 입력해 주세요">
                    </div>
                    <div class="form-group">
                        <label for="AccountArea">회사 분야</label>
                        <input type="text" class="form-control" id="AccountArea" placeholder="회사 분야를 입력해 주세요">
                    </div>
                    <div class="form-group">
                        <label for="AccountNumber">전화번호</label>
                        <input type="text" class="form-control" id="AccountNumber" placeholder="전화번호를 입력해 주세요">
                    </div>
                    <div class="form-group">
                        <label for="AccountPhnumber">핸드폰 번호</label>
                        <input type="text" class="form-control" id="AccountPhnumber" placeholder="핸드폰 번호를 입력해 주세요">
                    </div>
                    <div class="form-group">
                        <label for="AccountUsingCheck">거래 방식</label>
                        <input type="text" class="form-control" id="AccountUsingCheck" placeholder="거래 방식을 입력해 주세요">
                    </div>
                    <div class="form-group">
                        <label for="AccountReference">참고 사항</label>
                        <input type="text" class="form-control" id="AccountReference" placeholder="참고사항을 입력해 주세요">
                    </div>

                    <div class="form-group text-center">
                        <button type="submit" id="join-submit" class="btn btn-primary" onclick="AccountReg()">
                            등록<i class="fa fa-check spaceLeft"></i>
                        </button>
                        <button type="submit" class="btn btn-warning" onclick="window.close()">
                            등록취소<i class="fa fa-times spaceLeft"></i>
                        </button>
                    </div>
                </form>
            </div>

        </article>

</body>
</html>