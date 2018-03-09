package com.accp.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.accp.dao.GoodsMapper;
import com.accp.pojo.Goods;
import com.accp.service.GoodsService;
/**
 * 商品信息接口实现类（业务逻辑层）
 * @author MDS
 *
 */
@Service
public class GoodsServiceImpl implements GoodsService {
	/**
	 * 自动注入GoodsMapper对象
	 */
	@Autowired
	private GoodsMapper goodsMapper;
	
	@Override
	public List<Goods> getGoods(String district) throws SQLException {
		return goodsMapper.getGoods(district);
	}

}
