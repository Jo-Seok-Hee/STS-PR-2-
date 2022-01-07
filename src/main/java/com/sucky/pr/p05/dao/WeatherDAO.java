package com.sucky.pr.p05.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.sucky.pr.p05.model.Weather;

@Repository
public interface WeatherDAO {
	
	
	public Weather selectWeather(@Param("id")int id);
}
