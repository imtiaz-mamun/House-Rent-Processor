package com.controllers;

import com.dao.SignUpDao;
import com.models.SignUpInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
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

public class reg {
    @Autowired
    private SignUpDao signUpDao;
    @RequestMapping(value = "signup", method = RequestMethod.POST)
    public String doPOST1(@ModelAttribute("newUser") SignUpInfo user, Model model,
            BindingResult result, RedirectAttributes ra) {

        user.setAuthority("ROLE_admin");

        try {
            signUpDao.createUser(user);
        } catch (DuplicateKeyException ex) {
            result.rejectValue("username", "the user already exists");
        }

        model.addAttribute("pageinfo", "reg");
        model.addAttribute("noLogin", "");
        model.addAttribute("newUser", new SignUpInfo());

        return "redirect:/login";
    }

}
