function validCheck(form) {
	if(form.user!=null && !form.user.value.trim()){
		alert('작성자를 입력해주세요');
		form.user.focus();
		return;
	}
	if(!form.title.value.trim()){
		alert('제목을 입력해주세요');
		form.title.focus();
		return;
	}
	if(!form.content.value.trim()){
		alert('내용을 입력해주세요');
		form.content.focus();
		return;
	}
	
	form.submit();
}

function sendFetchRequest(url, method, query, successCallback){
	fetch(url,{
		method : method,
		headers : {
			"Content-Type":"application/x-www-form-urlencoded; charset=UTF-8"
		},
		body: query
	})
	.then(response => response.text())
	.then(data => successCallback(data))
	.catch(error => console.error('Error : ', error));
}