package com.augurit.water.monitorpro.serviceMoni.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.*;

@RestController("serviceRestController")
@RequestMapping("/moni")
public class ServiceController {
    List<Map<String,Object>> dataList=new ArrayList<>();
    @RequestMapping("/serviceMess")
    public List<Map<String,Object>> serviceMess(@RequestParam(value = "message", required = false) String message,
                                                @RequestParam(value = "time", required = false) String time){
        Map<String,Object> map=new HashMap<>();
        map.put("message",message);
        map.put("time",time);
        dataList.add(map);
        return null;
    }
    @RequestMapping("/getServiceMess")
    public List<Map<String,Object>> serviceMess(){
        return dataList;
    }
}
