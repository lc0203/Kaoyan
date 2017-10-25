var keywords=null;
var stype=1;
function dealdata(){
		keywords =	document.getElementById("keywords").value;
		var type = document.getElementsByName("type");
		 for(var i=0; i<type.length; i ++){
	        if(type[i].checked){
		         stype = type[i].value;
	        }
	    }
	}

function search() {
		dealdata();
		var url = "search_action?keywords="+keywords+"&type="+stype;
		createaddproductRequest(url);
}
function iframeRefresh(){
	if(stype=="0"){
	document.getElementById("body_study2_main").src = "jsp/doc.jsp";
	}
	else{
	document.getElementById("body_study2_main").src = "jsp/video.jsp";
	}
}
var http_request = false;
function createaddproductRequest(url){
if(window.XMLHttpRequest){
http_request = new XMLHttpRequest();
}
else if(window.ActiveXObject){
	try{
				http_request = new ActiveXObject("Msxml2.XMLHTTP");							
	}
	catch(e){
			try{
				http_request = new ActiveXObject("Microsoft.XMLHTTP");
			}
			catch(e){
			}
	}
}
if(!http_request){
	alert("不能创建XMLHttpRequest实例");
	return false;
}
http_request.onreadystatechange=function(){
	getaddproductResult();
};
http_request.open( 'GET', url, true);
http_request.send(null);
}    		
function getaddproductResult(){
var response =http_request.responseText;
if(http_request.readyState==4){
	if(http_request.status==200){
		
		if(response=="success"){
			alert(response);
			//refresh();
			//alert(response);
			iframeRefresh();
		}
		else{
			alert(response);
		}
	}
	else{
		alert("响应失败");
	}
}
}