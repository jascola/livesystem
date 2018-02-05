package dao;

import org.springframework.stereotype.Repository;

import entity.Admin;

@Repository
public interface AdminDao {
	int insert(Admin admin);
	int updatepassword(Admin admin);
	Admin queryById(Integer id);
}
