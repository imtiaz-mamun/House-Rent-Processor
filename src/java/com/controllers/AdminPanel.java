package com.controllers;

import com.dao.LocationInfoDao;
import com.dao.LocationNameDao;
import com.dao.RouteInfoDao;
import com.models.LocationDeletingModel;
import com.models.LocationInfoModeling;
import com.models.LocationNames;
import com.models.RouteInfoModeling;
import com.models.Forecasting_info_realtime;
import com.models.SourceDestination;
import com.services.LocationInfoService;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author Imtiaz Mamun
 */

@Controller
public class AdminPanel {

    @Autowired
    private LocationNameDao locationNameDao;
    @Autowired
    private LocationInfoDao locationInfoDao;
    @Autowired
    private LocationInfoService locationInfoService;
    @Autowired
    private RouteInfoDao routeInfoDao;
    

    @RequestMapping(value = "updateLocationInfo", method = RequestMethod.GET)
    public String doGET1(Model model) {

        model.addAttribute("locationNames", new LocationNames());

        List<String> locationNameList = locationNameDao.getAll();
        locationNameList.add(0, "new_location");
        model.addAttribute("allLocations", locationNameList);

        return "adminPanel";

    }
    
    @RequestMapping(value = "getLocationForUpdate", method = RequestMethod.POST)
    public String doPOST1(@ModelAttribute("location") LocationNames locationName, Model model) {
        
        if (locationName.getLocationNames().equals("new_location")) {
            
            LocationInfoModeling location = new LocationInfoModeling();
            location.setLocation_name("Enter name of the new location");
            model.addAttribute("locationForUpdate", location);
            model.addAttribute("actionType", "insert");

        } else {

            model.addAttribute("locationForUpdate", locationInfoDao.getByName(locationName.getLocationNames()));
            model.addAttribute("actionType", "update");
        }

        return "adminPanel";

    }
    @RequestMapping(value = "getForecastingTime", method = RequestMethod.POST)
    public String doPOST7(@ModelAttribute("location") SourceDestination locationName, Model model) {
        
        String source = locationName.getStart();
        String end = locationName.getEnd();
        
        Double result = routeInfoDao.getForecastingTimeNow(source,end);
        model.addAttribute("time", (result*100));
        
        model.addAttribute("showPrediction", " ");
        model.addAttribute("locationForPrediction", new SourceDestination());
        List<String> locationNameList = locationNameDao.getAll();
        locationNameList.add(0, "Select Location");
        model.addAttribute("allLocations", locationNameList);

        return "adminPanel";

    }
@RequestMapping(value = "updateLocation", method = RequestMethod.POST)
    public String doPOST2(@RequestParam("actionType") String actionType,
            @ModelAttribute("location") LocationInfoModeling location,
            RedirectAttributes ra,
            Model model) {

        if (actionType.equals("update")) {
            locationInfoDao.updateByname(location);
        } else {
            try {
                locationInfoDao.insert(location);
            } catch (DuplicateKeyException e) {
//                locationInfoDao.deleteByName(location);
                locationInfoDao.insert(location);
            }

        }

        return "redirect:/updateLocationInfo";

    }


    @RequestMapping(value = "gotoPrediction", method = RequestMethod.GET)
    public String doGET2(Model model) {
        model.addAttribute("showPrediction", " ");
        model.addAttribute("locationForPrediction", new SourceDestination());
        List<String> locationNameList = locationNameDao.getAll();
        locationNameList.add(0, "Select Location");
        model.addAttribute("allLocations", locationNameList);
        return "adminPanel";
    }

    @RequestMapping(value = "showDelete", method = RequestMethod.GET)
    public String doGET3(Model model) {
        
        model.addAttribute("showDeleteForm", "");
        model.addAttribute("tempDeletionModel", new LocationDeletingModel());
        model.addAttribute("allLocations", locationNameDao.getAll());
        return "adminPanel";

    }
    @RequestMapping(value = "performDeletion", method = RequestMethod.POST)
    public String doPOST4(@ModelAttribute("locations") LocationDeletingModel locations) {

        locationInfoService.batchDeleteByLocationsNames(locations.getLocationsToBeDeleted());

        return "redirect:/adminPanel";
    }

}
