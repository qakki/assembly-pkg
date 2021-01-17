package com.qakki.assembly.controller;

import com.qakki.assembly.domain.Demo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.UUID;

/**
 * 测试controller
 * @author qakki
 * @date 2021/1/18 12:26 上午
 */
@Controller
public class TestController {

    @RequestMapping("/get/data")
    @ResponseBody
    public Demo getDemoData(){
        Demo demo = new Demo();
        demo.setUuid(UUID.randomUUID().toString());
        demo.setNow(new Date());
        return demo;
    }

}
