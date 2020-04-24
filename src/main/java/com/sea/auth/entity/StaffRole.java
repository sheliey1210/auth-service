package com.sea.auth.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @Date: 2020-04-23
 * @author xulei
 */
@Data
public class StaffRole implements Serializable {
    private Integer id;

    private Integer userId;

    private Integer appId;

    private Integer roleId;

    private Date createTime;

    private Date updateTime;
}