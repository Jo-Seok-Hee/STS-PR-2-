package com.sucky.pr.p05;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sucky.pr.p05.bo.WeatherBO;
import com.sucky.pr.p05.model.Weather;

@Controller
public class p05Controller2 {
	
	@Autowired
	private WeatherBO weatherBO;
	
	
	@GetMapping("/p05/total1")
	public String total1(Model model) {
		
		selectTable(1, model);
		
		

		return "/p05/total1";
	}
	@ResponseBody
	@GetMapping("/p05/test")
	public Weather selectTable(int id,Model model) {
		
		
		
		Weather weathers = weatherBO.getWeather(id);
		model.addAttribute("weathers", weathers);
		

		return weathers;
	}
	
}
