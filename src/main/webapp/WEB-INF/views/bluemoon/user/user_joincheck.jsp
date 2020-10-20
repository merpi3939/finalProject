<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                            <div class="card-header">가입여부</div>
                            <div class="card-body">
                                <form class="form-horizontal" id="joinForm" method="post" action=<c:url value="/join"/>>
                                    <div class="form-group">
                                        <label for="nameFind" class="cols-sm-2 control-label">이름</label> 
                                        <span id="nameNullMsg" class="msg nameMsg">이름은 필수 입력입니다.</span>
                                        <span id="nameValidMsg" class="msg nameMsg">이름을 형식에 맞게 입력해 주세요.</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="userName" id="userName" value="${user.userName }" placeholder="이름을 입력해주세요." />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="phone" class="cols-sm-2 control-label">전화번호</label>
                                       <span id="phoneNullMsg" class="msg phoneMsg">전화번호는 필수 입력입니다.</span>
                                        <span id="phoneValidMsg" class="msg phoneMsg">형식에 맞는 전화번호를 입력해주세요.</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <select name="phone1" id="phone1" style="width: 33%;">
                                                	<option value="010">010</option>
                                                	<option value="011">011</option>
                                                	<option value="012">012</option>
                                                	<option value="016">016</option>
                                                	<option value="017">017</option>
                                                	<option value="018">018</option>
                                                	<option value="019">019</option>
                                                </select>
                                                <input type="text" class="form-control" name="phone2" id="phone2" value="${user.phone2 }" maxlength="4"/>
                                                <input type="text" class="form-control" name="phone3" id="phone3" value="${user.phone3 }" maxlength="4"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="display" align="center" style="color: red;">${message }</div>
                                    <div class="form-group ">
                                        <button id="subBtn" type="submit" class="btn btn-primary btn-lg btn-block user-btn">확인</button>
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
	
	//이름
	var name=$("#userName").val();
	var nameReg=/^[가-힣]{2,10}$/g;
 	
	if(name=="") {
		$("#nameNullMsg").show();
		result=false;
	} else if (!nameReg.test(name)) {
		$("#nameValidMsg").show();
		result=false;
	}

	//전화번호
	var phone2=$("#phone2").val();
	var phone3=$("#phone3").val();
	var phoneReg2=/^([0-9]{3,4})$/;
	var phoneReg3=/^([0-9]{4})$/;
	
	if(phone2=="" || phone3=="") {
		$("#phoneNullMsg").show();
		result=false;
	} else if(!phoneReg2.test(phone2) || !phoneReg3.test(phone3)) {
		$("#phoneValidMsg").show();
		result=false;
	}
	return result;

}); 

</script>
