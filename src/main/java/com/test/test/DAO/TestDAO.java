package com.test.test.DAO;


import com.test.test.Entity.TestEntity;
import com.test.test.DTO.testDto;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class TestDAO implements TestDAOimpl{

    private final String NS = "";
    private final SqlSessionTemplate sqlSession;

    @Override
    public int test(testDto dto) {
        System.out.println("Repository:" + dto);
        return sqlSession.insert(NS + "test", dto);
    }
    @Override
    public List<TestEntity> getTest(){
        return sqlSession.selectList(NS + "getTest");
    }
}
