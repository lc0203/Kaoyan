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
								if(response=="0"){
									alert("已加入购物车");
								}
								else if(response=="1"){
									alert("已购买该产品");
								}
								else{
									carreload();
								}
							}
							else{
								alert("加入购物车失败");
							}
						}
					}
				function add(id){
					var url =	"MyServlet?action=add&id="+id;
					createaddproductRequest(url);
				}
				function carreload(){
					alert("加入购物车成功");
					document.getElementById("carframe").src="Shopcar.jsp";
				}
