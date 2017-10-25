function log(){
	var log=document.getElementById("logOn");
	if(log.style.display.toString()=='')
	log.style.display='block';
	else if(log.style.display.toString()=='block')
	log.style.display='';
	var reg=document.getElementById("regOn");
	reg.style.display='';
}

function reg(){
	var reg=document.getElementById("regOn");
	if(reg.style.display.toString()=='')
	reg.style.display='block';
	else if(reg.style.display.toString()=='block')
	reg.style.display='';
	var log=document.getElementById("logOn");
	log.style.display='';
}

function logOn(){
    var id=document.getElementById("st.id").value;
    var password=document.getElementById("st.password").value;
    if(id=='' || password=='')
    	alert("Wrong! id or password cannot be empty!");
    else{
    	var form=document.getElementById("form_logOn");
        form.submit();
    }
    
}
function regOn(){
	var password=document.getElementById("password1").value;
	var repassword=document.getElementById("password2").value;
	if(password != repassword)
		alert("密码不一致");
	else{
		var form=document.getElementById("form_regOn");
		form.submit();
		alert("注册成功");
	}
		
}