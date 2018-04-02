<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript" src="script/jquery-1.7.2.js"></script>
	<script type="text/javascript">
		$(function(){
			$("a").click(function(){
				//使用load方法处理Ajax
				var url = this.href;	//url +sector(选择器)
				//var url = this.href + " h2 a";
				var args = {"time": new Date()};//url之后加时间戳，去掉缓存
				$("#content").load(url, args);
				
				return false;
			});
		});
	</script>
</head>
<body>
	<a href="HelloAjax.txt">HelloAjax</a>
	<div id="content"> 
		<h2><a href="####">####</a></h2>
	</div>
	
</body>
</html>