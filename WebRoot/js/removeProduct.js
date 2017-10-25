	var http_request = false;
    					function createRequest(url){
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
							getResult();
						};
						http_request.open( 'GET', url, true);
						http_request.send(null);
					}    		
						function getResult(){
						if(http_request.readyState==4){
							if(http_request.status==200){
								refresh();
							}
							else{
								alert("加入购物车失败");
							}
						}
					}
						function refresh(){
							window.location.replace("Shopcar.jsp");
						}
			