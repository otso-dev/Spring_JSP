package com.test.test;

import DTO.testDto;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@Slf4j
public class TestController {

    @ResponseBody
    @RequestMapping(value = "/test/testpage", method = RequestMethod.POST)
    public String postTest(testDto dto, Model model){
        System.out.println(dto.toString());
        Gson gson = new GsonBuilder().create();
        String json = gson.toJson(dto);

        model.addAttribute("responseData", json);

        return json;
    }
}
