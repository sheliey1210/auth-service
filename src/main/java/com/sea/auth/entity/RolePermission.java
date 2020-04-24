package com.sea.auth.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @Date: 2020-04-23
 * @author xulei
 */
@Data
public class RolePermission implements Serializable {
    private Integer id;

    private Integer appId;

    private Integer roleId;

    private Integer menuId;

    private Integer permissionId;

    private Date createTime;

    private Date updateTime;
}