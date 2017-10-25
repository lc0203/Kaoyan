    $(document).ready(function(){
	$("#btnAjax").click(function() {
		alert("hello!");
	        var vid = $("#vid").val();
	        //login1为Action类命名空间名称；AjaxExecute为Action方法名称
	        $.ajax({
	            type : "post",
	            url : '/joinAction',
	            data : {//设置数据源
	                vid : vid
	               
	            },
	            dataType : "json",//设置需要返回的数据类型
	            success : function() {
	                alert("加入成功");
	            },
	            error : function() {
	                alert("加入失败");
	            }
	        });
	    });
    });
