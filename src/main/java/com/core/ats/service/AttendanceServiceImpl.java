package com.core.ats.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.core.ats.dao.AttendanceDao;
import com.core.ats.model.Attendance;
import com.core.ats.model.User;

@Service("attendanceService")
@Transactional
public class AttendanceServiceImpl implements AttendanceService {
	
	@Autowired
	AttendanceDao attendanceDao;

	@Override
	public List<Attendance> findByUserId(int userId) {
		// TODO Auto-generated method stub
		List<Attendance> attendance = attendanceDao.findByUserId(userId);
		return attendance;
	}

	@Override
	public void saveAttendance(Attendance attendance) {
		// TODO Auto-generated method stub
		attendanceDao.saveAttendance(attendance);
	}

	@Override
	public void updateAttendance(Attendance attendance) {
		Attendance entity = attendanceDao.findById(attendance.getId());
		if(entity!=null){
			entity.setDate(attendance.getDate());
			entity.setStatus(attendance.getStatus());
			entity.setType(attendance.getType());
		}
	}

	@Override
	public Attendance findById(int id) {
		Attendance attendance = attendanceDao.findById(id);
		return null;
	}

	@Override
	public void deleteById(int id) {
		attendanceDao.deleteById(id);
	}
}
