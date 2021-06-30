/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.services;

import com.dao.LocationInfoDao;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ANTU
 */
@Service("locationInfoService")
public class LocationInfoService {

    @Autowired
    private LocationInfoDao locationInfoDao;

//    Converting the list to map for batch update
    @SuppressWarnings("unchecked")
    public void batchDeleteByLocationsNames(List<String> locations) {

        Map<String, String>[] mapArray;
        mapArray = new HashMap[locations.size()];

        Map<String, String> locationMap;

        for (int i = 0; i < locations.size(); i++) {
            locationMap = new HashMap<>();
            locationMap.put("location_name", locations.get(i));
            mapArray[i] = locationMap;
        }

        locationInfoDao.batchDeleteByNames(mapArray);
    }

}
