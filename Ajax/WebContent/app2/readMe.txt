一、Ajax_典型应用_添加商品

包括四个文件： 
	ShoppingCart.java		(com.ajax.app.beans包下面的)			JavaBean
	ShoppingCartItem.java	(com.ajax.app.beans包下面的)			JavaBean
	AddToCartServlet.java	(com.ajax.app.servlet包下面的) 		后端Servlet
	index.jsp				(app2下面的)							前端jsp页面
	
使用JQuery的$.getJSON(url, args, function(data){  
		
})完成Ajax 操作


二、Ajax_使用 Jackson

1). 加入jar包：
jackson-annotation-2.2.2.jar
jackson-core-2.2.2.jar
jackson-databind-2.2.2.jar

2). 具体的使用步骤：
I.  创建org.ObjectMapper 对象
II. 调用 ObjectMapper 的 writerValueAsString 方法把Java对象或集合转为JSON字符串

ObjectMapper mapper = new ObjectMapper();
String jsonStr = mapper.writerValueAsString(customer);

III. 注意：
①. JackSon根据getter 来定位Json 对象的属性，
②. 可以在类的 getter 方法上添加注解：org.codehaus.jackson.annotation.JsonIgnore,
       在转为JSON 对象时以忽略该属性!

——————————————————————————
测试在	com.ajax.app.test包中的  Customer.java 文件中做了测试

修改了   	AddToCartServlet.java	(com.ajax.app.servlet包下面的) 	的文件-->法二




运行方式： 在index.jsp文件中右键运行项目就可以了



