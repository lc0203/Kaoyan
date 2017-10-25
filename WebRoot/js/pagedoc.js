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
								
								if(response.length==0){
									refresh();
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
				function joinstudy(vid){
					var url ="join_action?vid="+vid;
					createaddproductRequest(url);
				}
				function changepage(vid) {
					//alert("hello");
					var url = "page_action?curpage=" + vid;
					createaddproductRequest(url);
				}
				function refresh() {
					window.location.replace("/MyProject6/jsp/doc.jsp");
				}
