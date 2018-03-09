package com.accp.pojo;

import java.io.Serializable;
/**
 * 商品信息实体类
 * @author MDS
 *
 */
public class Goods implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer id;
	private String goodsName;
	private int status;
	private int district;
	private int counts;
	private double price;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getDistrict() {
		return district;
	}
	public void setDistrict(int district) {
		this.district = district;
	}
	public int getCounts() {
		return counts;
	}
	public void setCounts(int counts) {
		this.counts = counts;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Goods() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Goods(Integer id, String goodsName, int status, int district,
			int counts, double price) {
		super();
		this.id = id;
		this.goodsName = goodsName;
		this.status = status;
		this.district = district;
		this.counts = counts;
		this.price = price;
	}
	@Override
	public String toString() {
		return "Goods [id=" + id + ", goodsName=" + goodsName + ", status="
				+ status + ", district=" + district + ", counts=" + counts
				+ ", price=" + price + "]";
	}
	
	

}
