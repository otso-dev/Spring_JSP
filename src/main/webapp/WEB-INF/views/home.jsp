<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../../include/head.jsp"></jsp:include>
<html>
<head>
	<style>
		#sidebar .nav-item .myInfo{color: #0067FF;}
	</style>
</head>
<body>
<!-- Header -->
<jsp:include page="../../include/header_s.jsp"></jsp:include>
<!-- // Header -->
<!-- sidemenu -->
<div id="my_info">
	<jsp:include page="../../include/sidemenu.jsp"></jsp:include>
	<!-- //sidemenu -->
	<div class="cont">
		<div class="title">
			<img src="${pageContext.request.contextPath}/resources/img/logo_03.png" alt="logo">
			<h3>내 정보 수정</h3>
		</div>
		<div class="cont_wrap">
			<div class="list">
				<h3>개인정보조회</h3>
				<form onsubmit="return validate()" name="" method="POST" action="${pageContext.request.contextPath}/myInfoUpdate">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<div class="input_wrap">
						<label>아이디</label>
						<input class="readonly" type="text" placeholder="${user_info[0].user_store_id}" readonly>
						<label>이름</label>
						<input class="readonly" type="text" placeholder="${user_info[0].user_store_name}" readonly>
						<label>상호명</label>
						<input class="readonly" type="text" placeholder="${user_info[0].user_store_business_name}" readonly>
						<label>연락처<span style="font-size: 14px; margin-left: 10px; color: #b9b9b9; font-weight: normal;">ex) 000-0000-0000</span></label>
						<input type="text" class="phone" name="user_store_phone" value="${user_info[0].user_store_phone}" placeholder="예시) 000-0000-0000">
						<label>이전비밀번호<span class="required_val ">*</span></label>
						<input class="before_pw" type="password" name="">
						<label>변경하실 비밀번호<span class="required_val ">*</span></label>
						<input class="after_pw" type="password" name="user_store_pw">
						<label>비밀번호 확인<span class="required_val ">*</span></label>
						<input class="pw_matcher" type="password" name="">
						<div class="btn_wrap">
							<button>비밀번호 변경</button>
						</div>
					</div>
				</form>
			</div>
			<div>
				<button type="button" onclick="location='testpage'">testpage</button>
			</div>
		</div>
	</div>
</div>
</body>
</html>
<script>
	function getContextPath() {
		var hostIndex = location.href.indexOf( location.host ) + location.host.length;
		return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
	};

	//전화번호 유효성체크
	function telValidator(args) {
		const msg = '유효하지 않는 전화번호입니다. 형식을 지켜 전화번호를 입력해주세요 ex) OOO-OOOO-OOOO';

		if (/^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}/.test(args)) {
			return true;
		}
		alert(msg);
		return false;
	}

	function validate() {
		var before_pw = $('.before_pw').val();
		var after_pw = $('.after_pw').val();
		var pw_matcher = $('.pw_matcher').val();
		var phone = $('.phone').val();
		if(phone == "")
		{
			alert("전화번호를 입력해주세요.");
			return false;
		}
		if(telValidator(phone) == false)
		{
			return false;
		}
		if (before_pw == "") {
			alert("이전 비밀번호를 입력해주세요.");
			return false;
		}
		if (after_pw == "") {
			alert("변경하실 비밀번호를 입력해주세요.");
			return false;
		}
		if (pw_matcher == "") {
			alert("비밀번호를 입력해주세요.");
			return false;
		}
		else
		{
			if (after_pw != pw_matcher) {
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			}
		}
		if(before_pw == after_pw)
		{
			alert("이전비밀번호와 변경할 비밀번호가 동일합니다.");
			return false;
		}
		else
		{
			$.ajax({
				/* url: getContextPath() + '/checkPW', */
				url:'${pageContext.request.contextPath}/checkPW',
				type:'POST', //POST 방식으로 전달
				data:{
					//보낼 데이터
					before_pw : before_pw
				},
				beforeSend: function(xhr){
					var header = $("meta[name='_csrf_header']").attr('content');
					var token = $("meta[name='_csrf']").attr('content');
					xhr.setRequestHeader(header, token);
				},
				success:function(result){ //컨트롤러에서 넘어온 result값을 받는다
					if(result != 1)
					{
						alert("현재 비밀번호와 일치하지 않습니다.");
						return false;
					}
					else
					{
						alert("변경되었습니다.");
						return true;
					}
				},
				error:function(){
					alert("에러입니다");
				}
			});
		}
		return true;
	}
</script>