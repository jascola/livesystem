package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.C_student;

@Repository
public interface C_studentDao {

	List<C_student> queryAll();
	int insert(C_student cs);
	C_student queryBysId(Integer id);
	C_student queryBytId(Integer id);
}
