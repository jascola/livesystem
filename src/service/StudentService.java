package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.StudentDao;
import entity.Student;

@Service
public class StudentService {
	@Autowired
	private StudentDao dao;
	public List<Student> queryAll(){
	return this.dao.queryAll();
	}
	@Transactional
	public int insert(Student student) {
		return this.dao.insert(student);
	}
	@Transactional
	public int delete(Integer id) {
		return this.dao.delete(id);
	}
	public Student queryById(Integer id) {
		return this.dao.queryById(id);
	}
	public Student queryByName(String name) {
		return this.dao.queryByName(name);
	}
}
