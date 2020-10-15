<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<style type="text/css">
		.user-style { 
			 margin-top: 50px;
   			 margin-bottom: 50px;
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
		
		.my-page {
			color: black !important;
		}
		
		.my-page-title {
			font-size: xx-large;
		}
	</style>
	
<div class="container user-con">
	<div class="row" style="margin-top: 35px">
		<div class="col-md-12">
			<ul class="nav nav-tabs nav-justified navbar-nav">
				<li class="nav-item">
					<a class="nav-link active my-page-title">MyPage</a>
				</li>
				<li class="nav-item">
					<a class="nav-link my-page" href="#">회원정보 변경</a>
				</li>
				<li class="nav-item">
					<a class="nav-link my-page" href="#">비밀번호 변경</a>
				</li>
				<li class="nav-item">
					<a class="nav-link my-page" href="#">회원 탈퇴</a>
				</li>
			</ul>
		</div>
	</div>

	<div class="row justify-content-center user-style">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">회원 탈퇴</div>
                            <div class="card-body">
                                <form class="form-horizontal" id="joinForm" method="post" action="#">
                                    <div class="form-group">
                                        <label for="password" class="cols-sm-2 control-label">비밀번호</label> 
                                        <span id="passNullMsg" class="msg passMsg">비밀번호를 입력해주세요.</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="password" class="form-control" name="password" id="password" placeholder="비밀번호를 입력해주세요." />
                                            </div>
                                        </div>
                                    </div>                                 
                                    <div class="form-group ">
                                       	<button type="submit" class="btn btn-primary btn-lg btn-block user-btn">회원탈퇴</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>	
</div>  

  <script type="text/javascript">
	 $("#password").focus();

	$("#joinForm").submit(function() {
		var result=true;
		$(".msg").hide();
		
	 	//비밀번호
	 	var password=$("#password").val();
	 	
	 	if(password=="") {
	 		$("#passNullMsg").show();
	 		result=false;
	 	} 
	 	
		return result;
	});
	  
  </script>
  