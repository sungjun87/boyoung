package com.common.product.service;


import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Service;


@Service
public class dbproduct_ServuceImp implements dbproduct_Service {

	@Inject
	private SqlSession sqlSession;
	
//	private static String namespace = "exam.";
	private static String namespace = "board_Mapper.";
	
	
//	@Override
//	public String dbexam() throws Exception{
//		session.delete(namespace+"delexam");
//		System.out.print(str);
//		System.out.println(sqlSession.selectOne(namespace+"dbexam"));
//		String str = sqlSession.selectOne(namespace+"dbexam");
//		System.out.println("여기 들어온다는거야??");
//		System.out.println(sqlSession);
//		SqlSession session = sqlSession.openSession();
//		System.out.println(sqlSession.selectOne(namespace+"dbexam"));
//		
//		return sqlSession.selectOne(namespace+"dbexam");
//		return str;
//	}

	@Override
	public int KindReg(Map<String, Object> params) throws Exception {
		int result = sqlSession.insert(namespace+"KindReg", params);
		return result;
	}


	@Override
	public List<Map<String, Object>> getKind() throws Exception {
		
		return sqlSession.selectList(namespace+"getKind");
	}


	@Override
	public int KindDel(Map<String, Object> params) throws Exception {
		
		return sqlSession.delete(namespace+"KindDel", params);
	}
}
