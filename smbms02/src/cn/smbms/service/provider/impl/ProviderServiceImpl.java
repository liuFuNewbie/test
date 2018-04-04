/**
 * @Title:  ProviderServiceImpl.java   
 * @Package cn.smbms.service.provider.impl   
 * @Description:
 * @author: MDS     
 * @date:   2018年3月19日 上午8:52:26   
 * @version V1.0 
 * @Copyright: 2018
 */
package cn.smbms.service.provider.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.smbms.dao.provider.ProviderMapper;
import cn.smbms.pojo.Provider;
import cn.smbms.pojo.ProviderExample;
import cn.smbms.service.provider.ProviderService;

/**
 * @ClassName: ProviderServiceImpl
 * @Description:
 * @author: MDS
 * @date: 2018年3月19日 上午8:52:26
 * 
 * @Copyright: 2018
 */
@Service
public class ProviderServiceImpl implements ProviderService {
	@Autowired
	private ProviderMapper providerMapper;

	@Override
	public List<Provider> selectByExample(String proCode, String proName)
			throws SQLException {
		ProviderExample example = new ProviderExample();
		ProviderExample.Criteria createCriteria = example.createCriteria();
		if (proCode != null && proCode != "") {
			createCriteria.andProCodeLike("%"+proCode+"%");
		}
		if (proName != null && proName != "") {
			createCriteria.andProNameLike("%"+proName+"%");
		}
		return providerMapper.selectByExample(example);
	}

	@Override
	public int insertSelective(Provider record) throws SQLException {
		return providerMapper.insertSelective(record);
	}

	@Override
	public Provider selectByPrimaryKey(Long id) throws SQLException {
		return providerMapper.selectByPrimaryKey(id);
	}

}
