<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
		.user-style2 { 
			 margin-top: 60px;
   			 margin-bottom: 60px;
		}
		.user-btn {
			 border-radius: 0px;
		}
		
		.msg {
			display: none;
			color: red;
		}
		
		select {
			border-color: #ced4da;
		}
</style>

<div class="container user-con">
	<div class="row justify-content-center user-style2">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">비밀번호 찾기</div>
                            <div class="card-body">
                                <form class="form-horizontal" id="joinForm" method="post" action="#">
                                    <div class="form-group">
                                        <label for="findId" class="cols-sm-2 control-label">아이디</label> 
                                        <span id="findIdNullMsg" class="msg findIdMsg">아이디는 필수 입력입니다.</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="findId" id="findId" placeholder="본인 아이디를 입력해주세요." />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="findEmail" class="cols-sm-2 control-label">이메일</label>
                                        <span id="findEmailNullMsg" class="msg findEmailMsg">이메일은 필수 입력입니다.</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="findEmail" id="findEmail" placeholder="본인 이메일을 입력해주세요" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <button type="submit" class="btn btn-primary btn-lg btn-block user-btn">비밀번호 찾기</button>
                                    </div>                               
                                </form>
                            </div>
                        </div>
                    </div>
                </div>	
</div>

<script type="text/javascript">
  $("#joinForm").submit(function() {
			var result=true;
			$(".msg").hide();
			
		 	//아이디
		 	var findId=$("#findId").val();	
		 	
		 	if(findId=="") {
		 		$("#findIdNullMsg").show();
		 		result=false;
		 	} 
		 	
		 	//비밀번호확인
		 	var email=$("#findEmail").val();
	 	
			if(email=="") {
				$("#findEmailNullMsg").show();
				result=false;
			}
			
			return result;
		});
 </script>
 