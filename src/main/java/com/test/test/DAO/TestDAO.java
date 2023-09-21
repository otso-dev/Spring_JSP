package com.test.test.DAO;


import com.test.test.DTO.testDto;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class TestDAO implements TestDAOimpl{

    private final String NS = "";
    private final SqlSessionTemplate sqlSession;

    @Override
    public int test(testDto dto) {
        System.out.println("Repository:"+dto);
        return sqlSession.insert(NS + "test", dto);
    }
}
