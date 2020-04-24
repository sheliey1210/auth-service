package com.sea.auth.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @author: xulei
 * @Date: 2020-04-23
 */
@Data
public class MenuDTO implements Serializable {

    private String code;
    private String name;
    private String uri;

    private List<PermissionDTO> permissions;
}
