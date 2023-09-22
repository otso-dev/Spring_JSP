package com.test.test.Entity;

import com.test.test.DTO.testDto;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class TestEntity {
    private int userId;
    private String username;
    private String password;

    public testDto toDto(){
        return testDto.builder()
                .userId(userId)
                .name(username)
                .password(password)
                .build();
    }
}
