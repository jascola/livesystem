package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Student;

@Repository
public interface StudentDao {
	List<Student> queryAll();
	int insert(Student student);
	int delete(Integer id);
	Student queryById(Integer id);
	Student queryByName(String name);
}
