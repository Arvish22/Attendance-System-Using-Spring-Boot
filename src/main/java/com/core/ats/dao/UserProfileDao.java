package com.core.ats.dao;

import java.util.List;

import com.core.ats.model.UserProfile;



public interface UserProfileDao {

	List<UserProfile> findAll();
	
	UserProfile findByType(String type);
	
	UserProfile findById(int id);
}
