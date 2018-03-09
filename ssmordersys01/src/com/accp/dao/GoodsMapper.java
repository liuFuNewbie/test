package com.accp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.accp.pojo.Goods;
/**
 * 商品信息接口（数据访问层）
 * @author MDS
 *
 */
public interface GoodsMapper {
	/**
	 * 根据区域查询商品信息
	 * @param district 区域
	 * @return
	 */
	public List<Goods> getGoods(@Param("district")String district);
}
