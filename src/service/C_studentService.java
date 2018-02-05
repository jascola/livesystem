package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.C_studentDao;
import entity.C_student;

@Service
public class C_studentService {

	@Autowired
	private C_studentDao dao;
	public List<C_student> queryAll(){
	 return this.dao.queryAll();
	}
	public C_student queryBysId(Integer id) {
		return this.dao.queryBysId(id);
	}
	public C_student queryBytId(Integer id) {
		return this.dao.queryBytId(id);
	}
}
