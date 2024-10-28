package com.service.impl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.MoneyDAO;
import com.entity.Money;
import com.service.MoneyService;

@Service("moneyService")
public class MoneyServiceImpl implements MoneyService {
	@Autowired
	private MoneyDAO moneyDAO;
	@Override // 继承接口的新增 返回值0(失败),1(成功)
	public int insertMoney(Money money) {
		return this.moneyDAO.insertMoney(money);
	}

	@Override // 继承接口的更新 返回值0(失败),1(成功)
	public int updateMoney(Money money) {
		return this.moneyDAO.updateMoney(money);
	}

	@Override // 继承接口的删除 返回值0(失败),1(成功)
	public int deleteMoney(String moneyid) {
		return this.moneyDAO.deleteMoney(moneyid);
	}

	@Override // 继承接口的查询全部
	public List<Money> getAllMoney() {
		return this.moneyDAO.getAllMoney();
	}

	@Override // 继承接口的按条件精确查询
	public List<Money> getMoneyByCond(Money money) {
		return this.moneyDAO.getMoneyByCond(money);
	}

	@Override // 继承接口的按条件模糊查询
	public List<Money> getMoneyByLike(Money money) {
		return this.moneyDAO.getMoneyByLike(money);
	}

	@Override // 继承接口的按主键查询 返回Entity实例
	public Money getMoneyById(String moneyid) {
		return this.moneyDAO.getMoneyById(moneyid);
	}

}

