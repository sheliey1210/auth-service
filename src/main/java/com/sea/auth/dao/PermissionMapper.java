package com.sea.auth.dao;

import com.sea.auth.entity.Permission;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author: xulei
 * @Date: 2020-04-22
 */
@Mapper
public interface PermissionMapper {

    int insert(Permission record);
    List<Permission> getByIds(@Param("ids") List<Integer> ids);

}