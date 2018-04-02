package com.ajax.app.test;

import java.util.Arrays;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class Customer {
 
	public Customer(String name, String id) {
		super();
		this.name = name;
		this.id = id;
	}

	private String name;
	private String id;
	public String getName() {
		return name;
	}
	/*public String getCustomerName() {
		return name;
	}*/
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getCity(){
		return "BeiJing";
	}
	@JsonIgnore
	public String getBirth(){
		return "1990-12-12";
	}
	
	public static void main(String[] args) throws JsonProcessingException{
		
		//1. 导入jar包
		
		//2. 创建 ObjectMapper 对象
		ObjectMapper mapper = new ObjectMapper();
		
		//3. 调用mapper 的writerValueAsString() 方法把一个对象转为一个JSON字符串
		Customer customer = new Customer("AtGuiGu", "1001");
		String jsonStr = mapper.writeValueAsString(customer);
		System.out.println(jsonStr);
		
		//4. 注意：JackSon 使用  getter 方法来定位 JSON 对象的属性!
		//5. 可以通过添加注解 org.codehaus.jackson.annotation.JsonIgnore
		//忽略一个getter 定义的属性
		
		//3. 调用mapper 的writerValueAsString() 方法把一个集合转为一个JSON字符串
		List<Customer> customers = Arrays.asList(customer, new Customer("BCD", "2002"));
		jsonStr = mapper.writeValueAsString(customers);
		System.out.println(jsonStr);
	}
}
