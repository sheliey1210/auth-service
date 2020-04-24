package com.sea.auth.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @author: xulei
 * @Date: 2020-04-23
 */
@Data
public class RoleDTO implements Serializable {
    private String code;
    private String name;

    private List<MenuDTO> menus;
}
