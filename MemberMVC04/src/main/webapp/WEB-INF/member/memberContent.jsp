<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "../../header.jsp" %>
<c:if test="${vo eq null}">
  <h1 class="py-3"> 일치하는 회원이 없습니다 </h1>
</c:if>
<c:if test="${vo ne null}">
	<h1 class="py-3" > ${vo.name}회원의 상세보기 </h1>
	<form action="${ctx}/memberUpdate.do" method="post">
		<input type="hidden" name="num" value="${vo.num}"/>
		<table class='table table-bordered'>
		  <tr>
		    <td>번호</td>
		    <td class="left">${vo.num}</td>
		  </tr>
		   <tr>
		    <td>아이디</td>
		    <td class="left">${vo.id}</td>
		  </tr>
		   <tr>
		    <td>비밀번호</td>
		    <td class="left">${vo.pass}</td>
		  </tr>  
		    <tr>
		    <td>이름</td>
		    <td class="left">${vo.name}</td>
		  </tr> 
		  <tr>
		    <td>나이</td>
		    <td><input class="col-12"  type="text" name="age" value="${vo.age}"/></td>
		  </tr> 
		     <tr>
		    <td>이메일</td>
		    <td><input class="col-12"  type="text" name="email" value="${vo.email}"/></td>
		  </tr>
		  <tr>
		    <td>전화번호</td>
		    <td><input class="col-12"  type="text" name="phone" value="${vo.phone}"/></td>
		  </tr> 
		
		  <tr>
		    <td colspan="2" align="center">
		       <input type="button" value="수정하기" class='col-5 btn btn-primary' onclick="validCheck(form)"/>
		    </td>
		  </tr>
		</table>
	</form>
</c:if>
</body>
</html>

<script>

function validCheck(form) {
	if(!form.age.value.trim()){
		alert('수정할 나이를 입력해주세요');
		form.age.focus();
		return;
	}else{
		if(Number(form.age.value) < 10 || Number(form.age.value) > 99){
			alert('10-99사이의 값을 입력해주세요.');
			form.age.value='';
			form.age.focus();
			return;
		}
	}
	
	if(!form.email.value.trim()){
		alert('수정할 이메일 주소를 입력해주세요');
		form.email.focus();
		return;
	}else{
		if(!form.email.value.match(/\w+@\w+\.\w{2,3}$/)){
			alert('이메일 형식이 다릅니다');
			form.email.value='test@test.com';
			form.email.focus();
			return;
		}
	}
	
	if(!form.phone.value.trim()){
		alert('수정할 전화번호를 입력해주세요');
		form.phone.focus();
		return;
	}else{
		if(!form.phone.value.match(/^\d{2,3}-\d{3,4}-\d{4}$/)){
			alert('전화번호 형식이 다릅니다');
			form.phone.value='010-1234-1234';
			form.phone.focus();
			return;
		}
	}
	
	form.submit();
}

</script>