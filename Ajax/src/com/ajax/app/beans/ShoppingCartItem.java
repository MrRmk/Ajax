package com.ajax.app.beans;

public class ShoppingCartItem {

	private int number;		//数量
	
	private String bookName;//书名
	
	private int price;		//价格

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
}
