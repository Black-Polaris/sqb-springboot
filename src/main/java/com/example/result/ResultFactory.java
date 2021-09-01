package com.example.result;

import com.example.entity.User;

import java.sql.ResultSet;

public class ResultFactory {
    public static Result buildSuccessResult(Object data) {
        return buildResult(ResultCode.SUCCESS.code,"成功",data);
    }

    public static Result buildFailResult(String message) {
        return buildResult(ResultCode.FAIL.code,message,null);
    }

    public static Result buildResult(ResultCode resultCode,String message,Object data){
        return buildResult(resultCode.code,message,data);
    }

    private static Result buildResult(int resultCode, String message, Object data) {
        return new Result(resultCode,message,data);
    }
}
