# Ajax_test
On the test of Ajax  （关于Ajax的测试）

1.什么是Ajax? 不用刷新页面，但可以和服务端进行通信的方式，使用Ajax的主要方式是XMLHttprequest 对象

2.使用XMLHttpRequest 对象实现Ajax.[了解]

3.Ajax传输数据的3种方式

	1). XML: 笨重，解析困难，但XML是通用的数据交换格式。
	2). HTML: 不需要解析可以直接到文档中，若仅更新一部分区域。但传输的数据不是很方便，且HTML代码需要拼装完成。
	3). JSON: 小巧，有面向对象的特征，且有很多第三方Jar包可以把Java对象或集合转为JSON字符串。

4. 使用JQuery完成Ajax 操作

	1). load方式：可以用于HTML文档的元素节点，把结果直接加为对应节点的子元素。
	通常而言，load方法加载后的数据是一个HTML片段。
	var $obj = ...
	var url = ...
	var args = {key:value,...}	必须是JSON格式
	$obj.load(url, args);

	2).  $.get,$.post,$.getJSON：更加灵活。除去使用load 方法的情况，大部分时候都使用这3个方法
	
		I、基本的使用
		//url: Ajax请求的目标url
		//args: 传递的参数： JSON类型
		//data: Ajax 响应成功后的数据。 可能是 XML,HTML，JSON
		$.get(url, args, function(data){
		
		})
		II、请求JSON数据
		$.get(url, args, function(data){
		
		})
		$.post(url, args, function(data){
		
		})
		$.getJSON(url, args, function(data){
		
		})

一、XMLHttpRequest对象的open()方法允许程序员用一个Ajax调用向服务器发送请求。
	open(method,url,asynch)
	method: 请求类型，类似"GET"或"POST"的字符串，若只想从服务器检索一个文件，
而不需要发送任何数据，使用GET(可以在GET请求里通过附加载url上的查询字符串来发送数据，
不过数据大小限制为2000个字符)。若需要向服务器发送数据，用POST。
	在某些情况下，有些浏览器会把多个XMLHttpRequest请求的结果缓存在同一个url,
如果对每个请求的响应不同，就会带来不好的结果。在此将时间戳追加到URL的最后，就能确保URL的唯一性，
从而避免浏览器缓存的结果。
	url,路径字符串，指向你所请求的服务器上的那个文件，可以是绝对路径或相对路径。
	asynch,表示请求是否要异步传输，默认值为true。指定true，在读取后面的脚本之前，
不需要等待服务器的响应。指定为false,当脚本处理过程经过这点时，会停下来，一直等到Ajax请求执行完毕再继续执行。

二、Ajax从服务端向客户端发送数据的
Ajax传输数据的3种方式   分别是：html、xml、json
json: 最常用，一种简单的数据格式，比xml更轻巧。
	    优点：	 1、作为一种数据传输格式，JSON与XML很相似，但是它更加灵巧。
	    	   2、JSON不需要从服务器端发送含有特定内容类型的首部信息。
	    缺点：  1、语法过于严谨
	    	   2、代码不易读
	    	   3、eval函数存在风险（eval("(" + 字符串+ ")")方法  将字符串转换为json对象）
html: 优点：	1、从服务器发送的HTML代码在浏览器端不需要用JavaScript进行解析。
		  2、HTML的可读性好。
		  3、HTML代码块与innerHTML属性搭配，效率高。
	    缺点：  1、若需要通过Ajax更新一篇文档的多个部分，HTML不合适
	    	   2、innerHTML并非DOM标准。
xml:  优点：	1、XML是一种通用的数据格式。
		   2、不必把数据增加到已定义好的格式中，而是要为数据自定义合适的标记。
                   3、利用DOM可以完全掌控文档。
	    缺点：  1、如果文档来自于服务器，就必须得保证文档含有正确的首部信息，
	    	      若文档类型不正确，那么responseXML的值将是空的。
	    	   2、当浏览器接收到长的XML文件后，DOM解析可能会很复杂。
	    	
三、使用JQuery的方法实现Ajax.
load、get、post


五、使用JackSon

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

/*---------------------------------------
运行方式： 在index.jsp文件中右键运行项目就可以了
---------------------------------------*/
