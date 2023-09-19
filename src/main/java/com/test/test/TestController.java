package com.test.test;

import DTO.testDto;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Slf4j
public class TestController {

    @RequestMapping(value = "/test/testpage", method = RequestMethod.POST)
    public String postTest(@RequestBody String name){
        log.info(name);
        return name;
    }
}
