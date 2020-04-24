package com.sea.auth.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.springframework.http.HttpStatus;

import java.io.Serializable;

@Data
@AllArgsConstructor
public class RetDTO<T> implements Serializable {
    private int code;
    private String msg;
    private T data;


    public static <E> RetDTO<E> getSuccessData(E data){
        return new RetDTO<E>(HttpStatus.OK.value(), HttpStatus.OK.name(), data);
    }
}
