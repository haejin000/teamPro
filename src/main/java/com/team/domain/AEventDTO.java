package com.team.domain;

import java.sql.Timestamp;

public class AEventDTO {

	private int code;
	private String type;
	private int discountPer;
	private int discountNum;
	private int gift;
	private String name;
	private Timestamp giveDate;
	private Timestamp endDate;
	private String useable;
	private String benefit;
	
	
	public String getBenefit() {
		return benefit;
	}
	public void setBenefit(String benefit) {
		this.benefit = benefit;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getDiscountPer() {
		return discountPer;
	}
	public void setDiscountPer(int discountPer) {
		this.discountPer = discountPer;
	}
	public int getDiscountNum() {
		return discountNum;
	}
	public void setDiscountNum(int discountNum) {
		this.discountNum = discountNum;
	}
	public int getGift() {
		return gift;
	}
	public void setGift(int gift) {
		this.gift = gift;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Timestamp getGiveDate() {
		return giveDate;
	}
	public void setGiveDate(Timestamp giveDate) {
		this.giveDate = giveDate;
	}
	public Timestamp getEndDate() {
		return endDate;
	}
	public void setEndDate(Timestamp endDate) {
		this.endDate = endDate;
	}
	public String getUseable() {
		return useable;
	}
	public void setUseable(String useable) {
		this.useable = useable;
	}
	
	
}
