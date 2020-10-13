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
                            <div class="card-header">아이디 찾기</div>
                            <div class="card-body">
                                <form class="form-horizontal" id="joinForm" method="post" action="#">
                                    <div class="form-group">
                                        <label for="nameFind" class="cols-sm-2 control-label">이름</label> 
                                        <span id="nameFindNullMsg" class="msg nameFindMsg">이름을 입력해주세요.</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="nameFind" id="nameFind" placeholder="이름을 입력해주세요." />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="phone" class="cols-sm-2 control-label">전화번호</label>
                                        <span id="findPhoneNullMsg" class="msg findPhoneMsg">전화번호를 입력해주세요.</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <select name="findPhone1" id="findPhone1" style="width: 33%;">
                                                	<option value="선택" selected="selected">선택</option>
                                                	<option value="010">010</option>
                                                	<option value="011">011</option>
                                                	<option value="017">017</option>
                                                	<option value="019">019</option>
                                                </select>
                                                <input type="text" class="form-control" name="findPhone2" id="findPhone2" maxlength="4"/>
                                                <input type="text" class="form-control" name="findPhone3" id="findPhone3" maxlength="4"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <button type="submit" class="btn btn-primary btn-lg btn-block user-btn">아이디 찾기</button>
                                    </div>                               
                                </form>
                            </div>
                        </div>
                    </div>
                </div>	
</div>
