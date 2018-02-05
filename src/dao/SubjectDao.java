package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Subject;

@Repository
public interface SubjectDao {
	
	List<Subject> queryAll();
	int insert(Subject subject);	
	int delete(Integer id);
	Subject queryById(Integer id);
}
