package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.TeacherDao;
import entity.Teacher;

@Service
public class TeacherService {
	@Autowired
	private TeacherDao dao;

	public List<Teacher> queryAll() {
		return this.dao.queryAll();
	}

	@Transactional
	public int insert(Teacher teacher) {
		return this.dao.insert(teacher);
	}

	@Transactional
	public int delete(Integer id) {
		return this.dao.delete(id);
	}

	public Teacher queryById(Integer id) {
		return this.dao.queryById(id);
	}

	public Teacher queryByName(String name) {
		return this.dao.queryByName(name);
	}
}
