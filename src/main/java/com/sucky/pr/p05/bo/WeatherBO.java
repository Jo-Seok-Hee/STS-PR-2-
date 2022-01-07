package com.sucky.pr.p05.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sucky.pr.p05.dao.WeatherDAO;
import com.sucky.pr.p05.model.Weather;

@Service
public class WeatherBO {

	@Autowired
	private WeatherDAO weatherDAO;
	
	public Weather getWeather(int id) {
		return weatherDAO.selectWeather(id);
	}
}
