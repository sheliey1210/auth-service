package com.sea.auth.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @author: xulei
 * @Date: 2020-04-22
 */
@Data
public class Staff implements Serializable {
    private Integer id;
    private String username;
    private String password;
    private String name;
    private String englishName;
    private String email;
    private Integer status;
    private String token;
    private Date lastLoginTime;
    private Date createTime;
    private Integer version;
}
