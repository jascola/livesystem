package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.SubjectDao;
import entity.Subject;

@Service
public class SubjectService {

	@Autowired
	private SubjectDao dao;
	public List<Subject> queryAll(){
		return this.dao.queryAll();
	}
	public Subject queryById(Integer id) {
		return this.dao.queryById(id);
	}
	@Transactional
	public int insert(Subject su) {
		return this.dao.insert(su);
	}
	@Transactional
	public int delete(Integer id) {
		return this.dao.delete(id);
	}
}
