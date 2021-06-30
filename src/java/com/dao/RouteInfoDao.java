/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.models.LocationInfoModeling;
import com.models.RouteInfoModeling;
import com.models.Forecasting_info_realtime;
import java.util.Map;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSourceUtils;
import org.springframework.stereotype.Repository;
/**
 *
 * @author antu
 */
@Repository("routeInfoDao")
public class RouteInfoDao extends Parent_Dao{
    public RouteInfoModeling getByName(String locationName) {

        MapSqlParameterSource param = new MapSqlParameterSource("locationName", locationName);
        String sql = "select * from route_info where start_location=:locationName";

        return template.queryForObject(sql, param, BeanPropertyRowMapper.newInstance(RouteInfoModeling.class));
    }
    public void insert(Forecasting_info_realtime kep) {

        BeanPropertySqlParameterSource param = new BeanPropertySqlParameterSource(kep);
        String sql = "insert into forecasting(startLocation,endLocation,forecasting,forecastingHour,forecastingMin) "
                + "values(:startLocation,:endLocation,:forecasting,:forecastingHour,:forecastingMin)";

        template.update(sql, param);
    }
    public Double getForecastingTimeNow(String source,String end) {

        MapSqlParameterSource param = new MapSqlParameterSource();
        param.addValue("start",source);
        param.addValue("end",end);
        String sql = "select avg(forecasting) from forecasting where startLocation = :start and endLocation =:end";

        return template.queryForObject(sql, param, Double.class);
    }
}
