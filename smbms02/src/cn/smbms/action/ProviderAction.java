package cn.smbms.action;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import cn.smbms.pojo.Provider;
import cn.smbms.service.provider.ProviderService;

/**
 * 
 * @ClassName: ProviderAction
 * @Description:
 * @author: MDS
 * @date: 2018年3月19日 上午9:04:29
 * 
 * @Copyright: 2018
 */
@Controller
public class ProviderAction {
	@Autowired
	private ProviderService providerService;

	@RequestMapping("/selectByExample")
	public String selectByExample(
			Model model,
			@RequestParam(value = "queryProCode", required = false) String proCode,
			@RequestParam(value = "queryProName", required = false) String proName) {
		List<Provider> selectByExample = null;
		System.out.println("hello word");
		System.out.println("hello word");
		System.out.println("hello word");
		System.out.println("hello word");
		System.out.println("hello word");
		System.out.println("hello word");
		System.out.println("hello word");
		System.out.println("hello word");
		try {
			selectByExample = providerService.selectByExample(proCode, proName);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		model.addAttribute("providerList", selectByExample);
		model.addAttribute("queryProCode", proCode);
		model.addAttribute("queryProName", proName);
		return "providerlist";
	}

	@RequestMapping(value = "/insertSelective", method = RequestMethod.POST)
	public String insertSelective(Provider provider) {
		int count = 0;
		try {
			count = providerService.insertSelective(provider);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (count > 0) {
			return "redirect:/selectByExample.action";
		} else {
			return "provideradd";
		}
	}
	@RequestMapping(value="/selectByPrimaryKey/{id}",method=RequestMethod.GET)
	public String selectByPrimaryKey(Model model,@PathVariable Long id){
		Provider provider = null;
		try {
			provider = providerService.selectByPrimaryKey(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("provider", provider);
		return "providerview";
	}
}
