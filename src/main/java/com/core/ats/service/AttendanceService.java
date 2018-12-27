package com.core.ats.service;

import java.util.List;

import com.core.ats.model.Attendance;
import com.core.ats.model.User;

public interface AttendanceService {
	
	List<Attendance> findByUserId(int userId);
	
	void saveAttendance(Attendance attendance);
}
