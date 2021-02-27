package com.contact.java;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MethodControll {
    @Autowired
    DatabaseManeger db;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView index() {
        return new ModelAndView("index");
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
    public ModelAndView delete(@PathVariable int id) {

        db.delete(id);
        return new ModelAndView("delete");
    }

    @RequestMapping(value = "/save", method = RequestMethod.GET)
    public ModelAndView save() {
        List<contact> list = db.getAllContacts();
        ModelAndView model = new ModelAndView();
        model.setViewName("contactlist");
        model.addObject("listcontact", list);
        return model;
    }
}
