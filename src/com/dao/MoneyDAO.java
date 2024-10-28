package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.entity.Money;

@Repository("moneyDAO") // Repository标签定义数据库连接的访问 Spring中直接
@Mapper
public interface MoneyDAO {

	/**
* MoneyDAO 接口 可以按名称直接调用money.xml配置文件的SQL语句
 */

	// 插入数据 调用entity包money.xml里的insertMoney配置 返回值0(失败),1(成功)
	public int insertMoney(Money money);

	// 更新数据 调用entity包money.xml里的updateMoney配置 返回值0(失败),1(成功)
	public int updateMoney(Money money);

	// 删除数据 调用entity包money.xml里的deleteMoney配置 返回值0(失败),1(成功)
	public int deleteMoney(String moneyid);

	// 查询全部数据 调用entity包money.xml里的getAllMoney配置 返回List类型的数据
	public List<Money> getAllMoney();

	// 按照Money类里面的值精确查询 调用entity包money.xml里的getMoneyByCond配置 返回List类型的数据
	public List<Money> getMoneyByCond(Money money);

	// 按照Money类里面的值模糊查询 调用entity包money.xml里的getMoneyByLike配置 返回List类型的数据
	public List<Money> getMoneyByLike(Money money);

	// 按主键查询表返回单一的Money实例 调用entity包money.xml里的getMoneyById配置
	public Money getMoneyById(String moneyid);

}


