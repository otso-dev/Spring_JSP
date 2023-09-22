package com.test.test.DTO;

import lombok.Data;

@Data
public class ResponseDto <T>{
    private String message;
    private T data;
}
