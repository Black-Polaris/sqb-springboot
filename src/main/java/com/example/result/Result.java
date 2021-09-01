package com.example.result;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * @author sqb
 * 响应码对象
 */
@Data
@Accessors(chain = true)
public class Result {
    private int code;
    private String message;
    private Object result;

    public Result(int code,String message,Object data) {
        this.code = code;
        this.message = message;
        this.result = data;
    }
}
