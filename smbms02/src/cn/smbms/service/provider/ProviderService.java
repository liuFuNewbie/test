/**
 * @Title:  ProviderService.java   
 * @Package cn.smbms.service.provider   
 * @Description:
 * @author: MDS     
 * @date:   2018年3月19日 上午8:47:09   
 * @version V1.0 
 * @Copyright: 2018
 */
package cn.smbms.service.provider;

import java.sql.SQLException;
import java.util.List;

import cn.smbms.pojo.Provider;

/**
 * @ClassName:  ProviderService   
 * @Description:
 * @author: MDS
 * @date:   2018年3月19日 上午8:47:09   
 *     
 * @Copyright: 2018
 */
public interface ProviderService {
	/**
	 * 
	 * @Title: selectByExample   
	 * @Description:根据供应商编码和供应商名称获取供应商信息
	 * @author: MDS
	 * @param: @param proCode 供应商编号
	 * @param: @param proName 供应商名称
	 * @param: @return 供应商集合
	 * @throws SQLException
	 */
    List<Provider> selectByExample(String proCode,String proName) throws SQLException;
    /**
     * @Title: insertSelective
     * @Description:选择性添加供应商
     * @author: MDS
     * @param record 供应商对象
     * @return 防护受影响行数
     * @throws SQLException
     */
    public int insertSelective(Provider record)throws SQLException;
    /**
     * @Title: selectByPrimaryKey
     * @Description:通过编号查询供应商信息
     * @author: MDS
     * @param id 编号
     * @return 返回供应商对象
     * @throws SQLException
     */
    public Provider selectByPrimaryKey(Long id) throws SQLException;
}
