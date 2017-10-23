package com.sega.webshop.service.user;


import com.sega.webshop.model.user.UserProfile;

import java.util.List;

public interface UserProfileService {

	List<UserProfile> findAll();
	
	UserProfile findByType(String type);
	
	UserProfile findById(int id);
}
