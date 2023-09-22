package com.test.test;

import com.test.test.DTO.testDto;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.test.test.Service.TestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
@Slf4j
public class TestController {

    private final TestService testService;
    @ResponseBody
    @RequestMapping(value = "/test/testpage", method = RequestMethod.POST)
    public int postTest(testDto dto){
        return testService.testService(dto);
    }

    @RequestMapping(value = "/dataget", method = RequestMethod.GET)
    public String getData(Model model){
//        testService.getTestModel(model);
        System.out.println(testService.getTestModel(model));
        return "dataget";
    }
}
