package com.test.test.Service;

import com.test.test.DAO.TestDAO;
import com.test.test.DAO.TestDAOimpl;
import com.test.test.DTO.testDto;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class TestService {

    private final TestDAOimpl testDAOimpl;


    public int testService(testDto dto){
        System.out.println(dto.toString());
        return testDAOimpl.test(dto);
    }

    public Model getTestModel(Model model){
        List<testDto> list = new ArrayList<>();
        testDAOimpl.getTest().forEach(user-> {
            list.add(user.toDto());
        });
        return model.addAttribute("userList",list);
    }

}
