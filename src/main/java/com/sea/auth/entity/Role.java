package com.sea.auth.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @Date: 2020-04-23
 * @author xulei
 */
@Data
public class Role implements Serializable {
    private Integer id;

    private Integer appId;

    private String code;

    private String name;

    private String remark;

    private Date createTime;

    private Date updateTime;

}