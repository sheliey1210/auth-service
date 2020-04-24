package com.sea.auth.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @Date: 2020-04-23
 * @author xulei
 */
@Data
public class Permission implements Serializable {
    private Integer id;

    private Integer appId;

    private Integer menuId;

    private String code;

    private String name;

    private String uri;

    private String remark;

    private Date createTime;

    private Date updateTime;
}