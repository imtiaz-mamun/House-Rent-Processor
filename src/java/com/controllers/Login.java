package com.controllers;

import com.dao.LocationInfoDao;
import com.dao.LocationNameDao;
import com.dao.RouteInfoDao;
import com.dao.SignUpDao;
import com.models.LocationNames;
import com.models.SignUpInfo;
import com.models.Forecasting_info_realtime;
import com.utils.GetBeans;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author Imtiaz Mamun
 */
@Controller
public class Login {
    
    
    @Autowired
    private LocationNameDao locationNameDao;
    @Autowired
    private RouteInfoDao routeInfoDao;
    
    @RequestMapping(value = "reg", method = RequestMethod.GET)
    public String doGETABOUT(Model model) {
        model.addAttribute("pageinfo", "reg");
        return "reg";
    }
    @RequestMapping(value = "index", method = RequestMethod.GET)
    public String doGETINDEX(Model model) {
        model.addAttribute("pageinfo", "index");
//        model.addAttribute("noLogin", "");
        model.addAttribute("newUser", new SignUpInfo());
        return "index";
    }
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String doGETLOGIN(Model model) {
        model.addAttribute("pageinfo", "index");
        model.addAttribute("newUser", new SignUpInfo());
        return "login";
    }
    @RequestMapping(value = "map", method = RequestMethod.GET)
    public String doGETMAP(Model model) {
        model.addAttribute("pageinfo", "map");
        return "map";
    }
    @RequestMapping(value = "adminPanel", method = RequestMethod.GET)
    public String doGETADMINPANEL(Model model) {
        model.addAttribute("pageinfo", "admin");
        model.addAttribute("allTablesForData", " ");
        model.addAttribute("locationsForFilter", new LocationNames());
        model.addAttribute("routeInfoTableInsert", " ");
        
        
        List<String> locationNameList = locationNameDao.getAll();
        
        model.addAttribute("startLocations", locationNameList);
        model.addAttribute("endLocations", locationNameList);
        
        model.addAttribute("allLocations", locationNameList);
        return "adminPanel";
    }
@RequestMapping(value = "input_element_forcasting", method = RequestMethod.POST)
    public String doPOS6(@ModelAttribute("kep") Forecasting_info_realtime kep,
            RedirectAttributes ra) {

        try {
            routeInfoDao.insert(kep);
        } catch (DuplicateKeyException ex) {
            routeInfoDao.insert(kep);
        } catch (DataAccessException ex) {
            //the message should be inserted into a jsp page
//            model.addAttribute("unknown khotiyan number", "unknown");
//            ra.addFlashAttribute("unknown khotiyan number", "unidentified khotiyan number");

        } catch (Exception ex) {

        }

        return "redirect:/adminPanel";

    }

    
}
