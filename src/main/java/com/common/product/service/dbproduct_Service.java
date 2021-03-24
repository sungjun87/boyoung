package com.common.product.service;

import java.util.List;
import java.util.Map;

public interface dbproduct_Service {
//	public String dbexam() throws Exception; 
	public int KindReg(Map<String, Object> params) throws Exception;
	public List<Map<String, Object>> getKind()throws Exception;
	public int KindDel(Map<String, Object> params)throws Exception;
	public List<Map<String, Object>> getAccount ()throws Exception;
	public int AccountReg (Map<String, Object> params)throws Exception;
	public int AccountDel(Map<String, Object> params) throws Exception;
}

