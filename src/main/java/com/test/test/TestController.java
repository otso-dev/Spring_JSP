package com.test.test;

import DTO.testDto;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@Slf4j
public class TestController {

    @ResponseBody
    @RequestMapping(value = "/test/testpage", method = {RequestMethod.GET, RequestMethod.POST})
    public String postTest(String name){
        log.info(name);
        return name;
    }
}
