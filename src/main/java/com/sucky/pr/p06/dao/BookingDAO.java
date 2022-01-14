package com.sucky.pr.p06.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.sucky.pr.p06.model.Booking;

@Repository
public interface BookingDAO {
	
	public List<Booking> selectBooking();
	
	public int insertBooking(
			@Param("name")String name
			, @Param("date")Date date
			, @Param("day")int day
			, @Param("headcount")int headcount
			, @Param("phoneNumber")String phoneNumber
			);
}
