package com.example.result;

public enum ResultCode {
    SUCCESS(200),
    FAIL(400),
    UNAUTHORIZED(401),
    NOT_FOUND(404),
    INTERNAL_SERVER_EROR(500);

    public int code;
    ResultCode(int code){
        this.code = code;
    }
}
