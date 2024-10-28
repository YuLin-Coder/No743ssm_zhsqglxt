package com.service;
import java.util.List;
import org.springframework.stereotype.Service;
import com.entity.Money;
@Service("moneyService")
public interface MoneyService {
	// 插入数据 调用moneyDAO里的insertMoney配置
	public int insertMoney(Money money);

	// 更新数据 调用moneyDAO里的updateMoney配置
	public int updateMoney(Money money);

	// 删除数据 调用moneyDAO里的deleteMoney配置
	public int deleteMoney(String moneyid);

	// 查询全部数据 调用moneyDAO里的getAllMoney配置
	public List<Money> getAllMoney();

	// 按照Money类里面的字段名称精确查询 调用moneyDAO里的getMoneyByCond配置
	public List<Money> getMoneyByCond(Money money);

	// 按照Money类里面的字段名称模糊查询 调用moneyDAO里的getMoneyByLike配置
	public List<Money> getMoneyByLike(Money money);

	// 按主键查询表返回单一的Money实例 调用moneyDAO里的getMoneyById配置
	public Money getMoneyById(String moneyid);

}

