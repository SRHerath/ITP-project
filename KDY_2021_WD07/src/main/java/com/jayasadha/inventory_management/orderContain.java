package com.jayasadha.inventory_management;

public class orderContain {
	
	private int itemID;
	private int orderID;
	private int returnCount;
	private int quantity;
	private int Itmquantity;
	
	public orderContain(int itemID, int orderID, int returnCount, int quantity,int itmquantity) {
		super();
		this.itemID = itemID;
		this.orderID = orderID;
		this.returnCount = returnCount;
		this.quantity = quantity;
		this.quantity = quantity;
	}

	public int getItemID() {
		return itemID;
	}

	public int getOrderID() {
		return orderID;
	}

	public int getReturnCount() {
		return returnCount;
	}

	public int getQuantity() {
		return quantity;
	}
	
	public int getItemQuantity() {
		return Itmquantity;
	}
	

}
