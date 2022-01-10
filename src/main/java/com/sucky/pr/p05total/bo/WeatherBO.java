package com.sucky.pr.p05total.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sucky.pr.p05total.dao.WeatherDAO;
import com.sucky.pr.p05total.model.Weather;

@Service()
public class WeatherBO {
	
	@Autowired
	private WeatherDAO weatherDAO;
	
	public List<Weather> getWeather(){
		return weatherDAO.selectWeather();
	}
	
	public int addWeather(Date date, String weather, double temperatures, double precipitation, String microDust, double windSpeed) {
		return weatherDAO.insertWeather(date, weather, temperatures, precipitation, microDust, windSpeed);
	}
}
