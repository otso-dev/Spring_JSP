package com.test.test.Service;

import com.test.test.DAO.TestDAO;
import com.test.test.DTO.testDto;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class TestService {

    private final TestDAO testDAO;


    public int testService(testDto dto){
        System.out.println(dto.toString());
        return testDAO.test(dto);
    }
}
