package com.dao;

import com.models.LocationInfoModeling;
import java.util.Map;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSourceUtils;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Imtiaz Mamun
 */


@Repository("locationInfoDao")
public class LocationInfoDao extends Parent_Dao {
    public LocationInfoModeling getByName(String locationName) {

        MapSqlParameterSource param = new MapSqlParameterSource("locationName", locationName);
        String sql = "select * from location_info where location_name=:locationName";

        return template.queryForObject(sql, param, BeanPropertyRowMapper.newInstance(LocationInfoModeling.class));
    }
    public void updateByname(LocationInfoModeling location) {

        BeanPropertySqlParameterSource paramOne = new BeanPropertySqlParameterSource(location);

        String sql = "update location_info set location_name=:location_name , latitude_x=:latitude_x ,"
                + " longitude_y=:longitude_y "
                + " where location_name=:location_name";

        template.update(sql, paramOne);

    }

    public void insert(LocationInfoModeling location) {

        BeanPropertySqlParameterSource param = new BeanPropertySqlParameterSource(location);

        String sql = "insert into location_info(location_name,latitude_x,longitude_y) "
                + "values(:location_name,:latitude_x,:longitude_y)";

        template.update(sql, param);

    }

    //Here lies a problem
    //Should have used only a String as parameter for this method
    //Try to use minimum parameter for DAO methods(NEW LESSON)
    public void deleteByName(LocationInfoModeling location) {

        String sql = "Delete from location_info where location_name=:location_name";
        BeanPropertySqlParameterSource param = new BeanPropertySqlParameterSource(location);

        template.update(sql, param);
    }
    public void batchDeleteByNames(Map<String, String>[] locationMap) {

        String sql = "Delete from location_info where location_name=:location_name";
        SqlParameterSource[] params = SqlParameterSourceUtils.createBatch(locationMap);
        template.batchUpdate(sql, params);
    }

}
