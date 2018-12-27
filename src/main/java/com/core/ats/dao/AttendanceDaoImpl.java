package com.core.ats.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.core.ats.model.Attendance;
import com.core.ats.model.User;

@Repository("attendanceDao")
public class AttendanceDaoImpl extends AbstractDao<Integer, Attendance>implements AttendanceDao {
	
	static final Logger logger = LoggerFactory.getLogger(AttendanceDaoImpl.class);

	@Override
	@SuppressWarnings("unchecked")
	public List<Attendance> findByUserId(int user_Id) {
		logger.info("UserID : {}", user_Id);
	
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("user_Id", user_Id));
		List<Attendance> attendanceArray = crit.list();
		return attendanceArray;
	}

	@Override
	public void saveAttendance(Attendance attendance) {
		// TODO Auto-generated method stub
		persist(attendance);
	}

}
