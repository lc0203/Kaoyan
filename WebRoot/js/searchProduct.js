	
function search(){
	var	text = document.getElementById("text");
	if(text.value==""){
		alert("不能为空");
	}
	else{
		document.getElementById("searchform").submit();
	}
}