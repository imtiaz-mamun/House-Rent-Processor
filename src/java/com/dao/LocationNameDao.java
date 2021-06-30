package com.dao;

import java.util.List;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Imtiaz Mamun
 */


@Repository("locationNameDao")
public class LocationNameDao extends Parent_Dao{
    public List<String> getAll() {

        String sql = "select location_name from location_info";
        MapSqlParameterSource param = new MapSqlParameterSource();

        return template.queryForList(sql, param, String.class);

    }
    
}
