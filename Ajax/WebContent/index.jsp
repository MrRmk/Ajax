<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript">
		
		window.onload = function(){
			//1、获取a 节点，并为其添加onclick 响应函数
			document.getElementsByTagName("a")[0].onclick = function(){
				
				//3、创建一个 XMLHttpRequest 对象
				var request = new XMLHttpRequest();
				
				//4、准备发送请求的数据 ：URL后面添加时间戳，可避免浏览器缓存
				//var url = this.href + "?time=" + new Date();
				var url = this.href;
				var method = "GET";
				//若用POST请求  加上 //*1* //*2*  //*3* 
				//var method = "POST";//*1*
				
				//5、调用 XMLHttpRequest 对象的 open 方法
				request.open(method, url);
				
				//request.setRequestHeader("ContentType","application/x-www-form-urlencoded");//*2*
				
				//6、调用 XMLHttpRequest 对象的send 方法
				request.send(null);//没有任何请求信息
				//request.send("name='atguigu'");//*3*
				
				//7、为 XMLHttpRequest 对象添加 onreadystatechange 响应函数
				request.onreadystatechange = function(){
					alert(request.readyState);
					//8、判断 响应是否完成， XMLHttpRequest 对象的readystate 的属性值为4的时候
					if( request.readyState == 4 ){
						//9、在判断响应是否可用； XMLHttpRequest 对象status 属性值为200
						if( request.status ==200 || request.status ==304 ){//304为空
							//10、答应响应函数 ：responseText  //服务器的响应
							alert(request.responseText);
						}
					}
				}
				
				//2、取消a 节点的默认行为
				return false;
			}
		}
	
	</script>
</head>
<body>
	<a href="HelloAjax.txt">HelloAjax</a>
	
</body>
</html>