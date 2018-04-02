<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-1.7.2.js"></script>
	<script type="text/javascript">
		$(function(){
			$(":input[name='username']").change(function(){
				var val = $(this).val();
				val = $.trim(val);	//去空格
				
				if(val != ""){	
					var url = "${pageContext.request.contextPath}/valiateUserName";
					var args = {"userName": val, "time": new Date()};
					
					$.post(url, args, function(data){
						$("#message").html(data);
					});
				}
			});
		})
	</script>
</head>
<body>
	<form action="" method="post">
		UserName: <input type="text" name="username" />
		<br>
		<div id="message"></div>
		<br>
		<input type="submit" value="Submit" />
	</form>
</body>
</html>