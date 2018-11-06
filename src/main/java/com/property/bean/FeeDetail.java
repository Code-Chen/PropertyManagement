package com.property.bean;

import java.util.Date;

public class FeeDetail {
	private int feeDetailId;
	private int name;
	private int house;
	private int num;
	private float price;
	private float payTotal;
	private float payReal;
	private float payDif;
	private Date start;
	private int reviewer;

	public int getFeeDetailId() {
		return feeDetailId;
	}

	public void setFeeDetailId(int feeDetailId) {
		this.feeDetailId = feeDetailId;
	}

	public int getName() {
		return name;
	}

	public void setName(int name) {
		this.name = name;
	}

	public int getHouse() {
		return house;
	}

	public void setHouse(int house) {
		this.house = house;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public float getPayTotal() {
		return payTotal;
	}

	public void setPayTotal(float payTotal) {
		this.payTotal = payTotal;
	}

	public float getPayReal() {
		return payReal;
	}

	public void setPayReal(float payReal) {
		this.payReal = payReal;
	}

	public float getPayDif() {
		return payDif;
	}

	public void setPayDif(float payDif) {
		this.payDif = payDif;
	}

	public Date getStart() {
		return start;
	}

	public void setStart(Date start) {
		this.start = start;
	}

	public int getReviewer() {
		return reviewer;
	}

	public void setReviewer(int reviewer) {
		this.reviewer = reviewer;
	}

}
