package com.accp.service;

import java.sql.SQLException;
import java.util.List;

import com.accp.pojo.Goods;
/**
 * 商品信息接口（业务逻辑层）
 * @author MDS
 *
 */
public interface GoodsService {
	/**
	 * 根据区域查询商品信息
	 * 
	 * @param district
	 *            区域
	 * @return
	 */
	public List<Goods> getGoods(String district) throws SQLException;
}
