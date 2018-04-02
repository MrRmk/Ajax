package com.ajax.app.beans;

import java.util.HashMap;
import java.util.Map;

public class ShoppingCart {
	
	//存放ShoppingCartItem 的Map: 键：书名， 值：ShoppingCartItem 对象
	private Map<String, ShoppingCartItem> items = new HashMap<String, ShoppingCartItem>();
	
	private String bookName;
	// 加入购物车方法-->如果Map中已存在此书，则对应数量+1,如果不存在，则将此书添加进Map中
	public void addToCart(String bookName, int price){
		
		this.bookName = bookName;
		
		if(items.containsKey(bookName)){ 
			 ShoppingCartItem item = items.get(bookName);
			 item.setNumber(item.getNumber()+1);
		 }else{
			 ShoppingCartItem item = new ShoppingCartItem();
			 item.setBookName(bookName);
			 item.setNumber(1);
			 item.setPrice(price);
			 
			 items.put(bookName, item);
		 }
	}
	// 书名
	public String getBookName() {
		return bookName;
	}
	
	//书的总数量
	public int getTotalBookNumber(){
		int total = 0;
		for(ShoppingCartItem item: items.values()){
			total += item.getNumber(); 
		}
		return total;
	}
	//书的总价格
	public int getTotalMoney(){
		int money = 0;
		for(ShoppingCartItem item: items.values()){
			money += item.getNumber() * item.getPrice(); 
		}
		return money;
	}
	
}
