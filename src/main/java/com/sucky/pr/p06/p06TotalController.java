package com.sucky.pr.p06;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sucky.pr.p06.model.Booking;
import com.sucky.pr.p06.vo.BookingVO;

@Controller
public class p06TotalController {
	
	@Autowired
	private BookingVO bookingVO;
	
	@GetMapping("/p06/total/View")
	public String totalMainView() {
		
		return "/p06/totalMain";
	}
	
	@GetMapping("/p06/total/bookingView")
	public String totalBookingView() {
		return "/p06/totalBooking";
	}
	
	@GetMapping("/p06/total/bookedList")
	public String totalBookedList(Model model){
		
		List<Booking> Book = new ArrayList<>();
			
			Book = bookingVO.getBooking();
		
		model.addAttribute("Book", Book);
		
		return "/p06/totalBookedList";
	}
	
	@GetMapping("/p06/total/booking")
	public String totalBooking(
			@RequestParam("name")String name,
			@DateTimeFormat(pattern = "yyyyMMdd") 
			@RequestParam("date")Date date
			, @RequestParam("day")int day
			, @RequestParam("headcount")int headcount
			, @RequestParam("phoneNumber")String phoneNumber
			) {
		
		bookingVO.addBooking(name, date, day, headcount, phoneNumber);
		
		
		
		return "redirect:/p06/total/bookedList";
	}
	
}
