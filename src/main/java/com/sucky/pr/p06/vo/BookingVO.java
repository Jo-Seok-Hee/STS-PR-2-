package com.sucky.pr.p06.vo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sucky.pr.p06.dao.BookingDAO;
import com.sucky.pr.p06.model.Booking;

@Service
public class BookingVO {
	
	
	@Autowired
	private BookingDAO bookingDAO;
	
	public List<Booking> getBooking() {
		
		return bookingDAO.selectBooking();
	}
	
	public int addBooking(String name, Date date, int day, int headcount, String phoneNumber) {
		
		return bookingDAO.insertBooking(name, date, day, headcount, phoneNumber);
	}
}
