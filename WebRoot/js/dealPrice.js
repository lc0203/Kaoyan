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
						var response =http_request.responseText;
						if(http_request.readyState==4){
							if(http_request.status==200){
								refresh();
							}
							else{
								alert("加入购物车失败");
							}
						}
					}


								function dealprice(){
  				 							var pros = document.getElementsByName("pro");
  				 							var count=0;
  				 							var url="MyServlet?action=balance";
  				 							for(var i=0;i<pros.length;i++){
  				 									if(pros[i].checked){
  				 											count++;
  				 											var id = pros[i].value;
  				 											url=url+"&"+id+"="+id;
  				 									}
  				 							}
  				 							if(count==0){
  				 								alert("请购买物品");
  				 								return;
  				 							}
  				 							else{
  				 								createRequest(url)
  				 							}
  				 					}
								function removeproduct(id){
													var url="MyServlet?action=remove&id="+id;
													 createRequest(url)
												}
								function refresh(){
									window.location.reload();
								}