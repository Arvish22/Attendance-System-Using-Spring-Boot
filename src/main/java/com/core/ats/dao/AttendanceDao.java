package com.core.ats.dao;

import java.util.List;

import com.core.ats.model.Attendance;

public interface AttendanceDao {
	
	public Attendance findById(int id);
	
	List<Attendance> findByUserId(int userId);
	
	void saveAttendance(Attendance attendance);
	
	public void deleteById(int id);
}
