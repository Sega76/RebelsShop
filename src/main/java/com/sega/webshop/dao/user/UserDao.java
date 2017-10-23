package com.sega.webshop.dao.user;


import com.sega.webshop.model.user.User;

import java.util.List;

public interface UserDao {

	List<User> getAllUsers();

	void save(User user);
	
	User findById(int id);
	
	User findBySSO(String sso);

	User findByEmail(String email);

	void updateUser(User user);
	
}

