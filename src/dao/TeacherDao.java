package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Teacher;
@Repository
public interface TeacherDao {
	List<Teacher> queryAll();
	int insert(Teacher teacher);
	int delete(Integer id);
	Teacher queryById(Integer id);
	Teacher queryByName(String name);
}
