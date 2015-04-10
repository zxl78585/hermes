package com.jlfex.hermes.repository.order.jlfex;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;
import com.jlfex.hermes.model.yltx.JlfexOrder;

/**
 * JLFEX 订单 仓库 
 * @author Administrator
 * 
 */
@Repository
public interface JlfexOrderRepository extends JpaRepository<JlfexOrder, String>, JpaSpecificationExecutor<JlfexOrder> {

	/**
	 * 根据状态查询 订单
	 * @param statusList
	 * @return
	 * @throws Exception
	 */
	public List<JlfexOrder>   findByPayStatusIn(List<String> statusList) throws Exception;
	
	public JlfexOrder  findByInvestId(String investId);
	
}
