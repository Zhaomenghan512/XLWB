package com.zhaomenghan.controller;

import com.zhaomenghan.domain.Type;
import com.zhaomenghan.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/type")
public class TypeController {
    @Autowired
    private TypeService service;
    @RequestMapping("/allType")
    public ModelAndView allType() {
        ModelAndView mv = new ModelAndView();
        List<Type> types = service.selectAllType();
        mv.setViewName("ProductList");
        mv.addObject("lists",types);
        return mv;
    }
    @RequestMapping("/manager")
    public ModelAndView typeManager() {
        ModelAndView mv = new ModelAndView();
        List<Type> types = service.selectAllType();
        mv.setViewName("TypeManager");
        mv.addObject("typeList",types);
        return mv;
    }
    @RequestMapping("/update")
    @ResponseBody
    public String updateType(Type type) {
        Integer flag = service.updateType(type);
        if (flag != 0) {
            return "1";
        } else {
            return "0";
        }
    }
    @RequestMapping("/detail")
    @ResponseBody
    public String selectById(Integer typeId) {
        String typeName = service.selectTypeName(typeId);
        return "typeId="+typeId+",typeName="+typeName;
    }
    @RequestMapping("/delete")
    @ResponseBody
    public String deleteType(Integer typeId) {
        Integer flag = service.deleteType(typeId);
        if (flag != 0) {
            return "1";
        } else {
            return "0";
        }
    }
    @RequestMapping("/insert")
    @ResponseBody
    public String insertType(String typeName, HttpServletResponse response) {
        Integer flag = service.insertType(typeName);
        if (flag != 0) {
            return "1";
        } else {
            return "0";
        }
    }
    @RequestMapping("/all")
    @ResponseBody
    public String findAll() {
        List<Type> types = service.selectAllType();
        String str = "";
        for (int i = 0; i < types.size(); i++) {
            if (i != types.size()-1) {
                str = str + types.get(i).getTypeId() + "=" + types.get(i).getTypeName()+",";
            } else {
                str = str + types.get(i).getTypeId() + "=" + types.get(i).getTypeName();
            }
        }
        return str;
    }
}
