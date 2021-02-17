package com.common.product.service;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Service;


@Service
public class dbproduct_ServuceImp implements dbproduct_Service {

	@Inject
	private SqlSession sqlSession;
	
	private static String namespace = "exam.";
	
	@Override
	public String dbexam() throws Exception{
//		session.delete(namespace+"delexam");
//		System.out.print(str);
//		System.out.println(sqlSession.selectOne(namespace+"dbexam"));
		String str = sqlSession.selectOne(namespace+"dbexam");
		System.out.println(str);
//		System.out.println(sqlSession);
//		SqlSession session = sqlSession.openSession();
//		System.out.println(sqlSession.selectOne(namespace+"dbexam"));
		
//		return sqlSession.selectOne(namespace+"dbexam");
		return null;
	}
}
