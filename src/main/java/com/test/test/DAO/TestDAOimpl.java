package com.test.test.DAO;


import com.test.test.DTO.testDto;
import org.apache.ibatis.annotations.Mapper;



@Mapper
public interface TestDAOimpl {
    int test(testDto dto);
}
