package com.accp.action;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.accp.pojo.Goods;
import com.accp.service.GoodsService;

/**
 * 商品信息处理类（表示层）
 * 
 * @author MDS
 *
 */
@Controller
@RequestMapping("/goods")
public class GoodsAction {
	@Autowired
	private GoodsService goodsService;

	/**
	 * 按区域查询商品信息的处理结果
	 * 
	 * @param model
	 * @param district
	 * @return
	 */
	@RequestMapping("/district")
	public String dispostResult_district(Model model,
			@RequestParam(value = "district") String district) {
		List<Goods> goods = null;
		try {
			goods = goodsService.getGoods(district);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("goods", goods);
		return "list";
	}
}
