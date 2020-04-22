package com.tj.sp.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tj.sp.dto.Customer;
@Repository
public class CustomerDaoImpl implements CustomerDao {
	@Autowired
	private SqlSessionTemplate sessionTemplate;

	@Override
	public Customer getCustomer(String cid) {
		return sessionTemplate.selectOne("getCustomer" ,cid);
	}
	@Override
	public int idConfirm(String cid) {
		// 회원가입시 아이디 중복 체크
		return sessionTemplate.selectOne("idConfirm", cid);
	}
	@Override
	public List<Customer> totlaCustomer() {
		// 전체 회원 목록 가져오기
		return sessionTemplate.selectList("totlaCustomer");
	}
	@Override
	public int snsConfirm(Customer customer) {
		// SNS로 로그인시 해당 SNS명과 SNSID가 있는지 검색
		return sessionTemplate.selectOne("snsConfirm", customer);
	}
	@Override
	public int registCustomer(Customer customer) {
		// 회원가입하기
		return sessionTemplate.insert("registCustomer", customer);
	}
	@Override
	public int modifyCustomer(Customer customer) {
		// 회원정보 수정
		return sessionTemplate.update("modifyCustomer", customer);
	}
	@Override
	public int modifyCustomerAddrcode(Customer customer) {
		// 회원주소코드 수정
		return sessionTemplate.update("modifyCustomer", customer);
	}
	@Override
	public int emailConfirm(String cemail) {
		// 회원정보 수정시 이메일 중복 체크
		return sessionTemplate.selectOne("emailConfirm", cemail);
	}
	@Override
	public int deleteCustomer(String cid) {
		// 회원 탈퇴
		return sessionTemplate.delete("deleteCustomer", cid);
	}
	@Override
	public int snsIdConfirm(String csnsid) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectOne("snsIdConfirm", csnsid);
	}

}
