<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "../../header.jsp" %>
<style>
tr :last-child {
	text-align: left;
}

input[type=submit], input[type=reset] {
	text-align: center;
}

#btns {
	text-align: center;
}
</style>


<body>
<h1 class="py-3"> 회원 가입</h1>
<form action="${ctx}/memberInsert.do" method="post">
	<table class="table table-bordered">
	  <tr>
	    <td>아이디</td>
	    <td>
	    <input class="col-5" type="text" name="id" id="id" autofocus required/>
	    <input type="button" value="중복체크" class="btn btn-outline-dark checkBtn" onclick="idCheck(form)">
	    </td>
	  </tr>
	  <tr>
	    <td>패스워드</td>
	    <td><input class="col-5" type="password" name="pass" required/></td>
	  </tr>
	  <tr>
	    <td>이름</td>
	    <td><input class="col-5" type="text" name="name" required/></td>
	  </tr>
	  <tr>
	    <td>나이</td>
	    <td><input class="col-5" type="number" name="age" required/></td>
	  </tr>
	  <tr>
	    <td>이메일</td>
	    <td><input class="col-5" type="email" name="email" required/></td>
	  </tr>
	  <tr>
	    <td>전화번호</td>
	    <td><input class="col-5" type="tel" name="phone" required/></td>
	  </tr>
	  <tr>
	  	<td>이미지</td>
	  	<td><input type="file" name="ofile"></td>
	  </tr>
	  <tr>
	    <td colspan="2" id="btns">
	      <input type="button" value="가입" class="col-3 btn btn-primary" onclick="validCheck(form)")/>
	      <input type="reset" value="취소" class="col-3 btn btn-warning"/>
	    </td>
	  </tr>
	</table>
</form>
</body>
</html>

<script type="text/javascript">

let check = 0;
function validCheck(form) {
	if(!form.id.value.trim()){
		alert('아이디를 입력해주세요');
		form.id.focus();
		return false;
	}
	
	if(!form.pass.value.trim()){
		alert('비밀번호를 입력해주세요');
		form.pass.focus();
		return false;
	}
	
	if(!form.name.value.trim()){
		alert('이름을 입력해주세요');
		form.name.focus();
		return false;
	}
	
	if(!form.age.value.trim()){
		alert('나이를 입력해주세요');
		form.age.focus();
		return false;
	}else{
		if(Number(form.age.value.trim()) <10 || Number(form.age.value.trim()) > 99){
			alert('나이 값(10-99)을 정확하게 입력하세요');
			form.age.value="";
			form.age.focus();
			return false;
		}
	}
	
	if(!form.email.value.trim()){
		alert("이메일을 입력해주세요");
		form.email.focus();
		return false;
	}else if(!form.email.value.match(/\w+@\w+\.\w{2,3}$/)){
		alert("이메일 형식이 다릅니다");
		form.email.value="test@test.com";
		form.email.focus();
		return false;
	}
	
	if(!form.phone.value){
		alert("전화번호를 입력해주세요");
		form.phone.focus();
		return false;
	}else if(!form.phone.value.match(/^\d{2,3}-\d{3,4}-\d{4}$/)){
		alert("전화번호 형식이 다릅니다");
		form.phone.value="010-1234-1234";
		form.phone.focus();
		return false;
	}
	
	if(check ===0 || check===-1){
		alert('id 중복체크 해주세요');
		return false;
	}
	
	form.submit();
}

function idCheck(form){
	let id = form.id.value;
	
	if(id.length==0){
		alert('id 값을 입력해주세요');
		form.id.focus();
		return;
	}
	
	fetch("vaildIdAjax.do", {
		method : "POST",
		headers : {"Content-Type" : "application/x-www-form-urlencoded; charset=UTF-8"},
		body : "id="+id,
	})
	.then(response => response.text())
	.then(getResult)
	.catch(()=>alert('error'));

}

function getResult(data) {
	let checkBtn =  document.querySelector(".checkBtn");
	if(data == "valid"){
		alert('사용 가능한 아이디입니다');
		checkBtn.value="확인완료";
		checkBtn.classList.remove("btn-outline-dark");
		checkBtn.classList.add("btn-success");
		check = 1;
	}else if(data == "notValid"){
		alert('이미 사용중인 아이디입니다');
		checkBtn.value="중복체크";
		checkBtn.classList.remove("btn-success");
		checkBtn.classList.add("btn-outline-dark");
		check= -1;
	}
}

document.getElementById("id").addEventListener("keyup", (e)=> {
    if (e.keyCode === 8) {
      check = 0;
    }
    let checkBtn =  document.querySelector(".checkBtn");
	checkBtn.value="중복체크";
	checkBtn.classList.remove("btn-success");
	checkBtn.classList.add("btn-outline-dark");
  });
  

</script>