package com.qakki.assembly.domain;

import lombok.Data;

import java.util.Date;

/**
 * 测试类
 * @author qakki
 * @date 2021/1/18 12:27 上午
 */
@Data
public class Demo {

    /**
     * 随机码
     */
    private String uuid;

    /**
     * 时间
     */
    private Date now;
}
