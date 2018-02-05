package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.AdminDao;
import entity.Admin;

@Service
public class AdminService {
	@Autowired
	private AdminDao dao;
	public int insert(Admin admin) {
		return this.dao.insert(admin);
	}
	public int updatepassword(Admin admin) {
		return this.updatepassword(admin);
	}
	public Admin queryById(Integer id) {
		return this.dao.queryById(id);
	}
}
