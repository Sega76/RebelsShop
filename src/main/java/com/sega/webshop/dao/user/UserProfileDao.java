package com.sega.webshop.dao.user;


import com.sega.webshop.model.user.UserProfile;

import java.util.List;

public interface UserProfileDao {

	List<UserProfile> findAll();
	
	UserProfile findByType(String type);
	
	UserProfile findById(int id);
}
