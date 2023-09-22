package com.test.test.DAO;


import com.test.test.Entity.TestEntity;
import com.test.test.DTO.testDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;


@Mapper
public interface TestDAOimpl {
    int test(testDto dto);
    List<TestEntity> getTest();

}
