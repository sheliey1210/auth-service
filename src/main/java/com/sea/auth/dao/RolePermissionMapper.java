package com.sea.auth.dao;

import com.sea.auth.entity.RolePermission;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author: xulei
 * @Date: 2020-04-22
 */
@Mapper
public interface RolePermissionMapper {

    int insert(RolePermission record);

    List<RolePermission> getByAppIdAndRoleIds(@Param("appId") Integer appId, @Param("roleIds") List<Integer> roleId);
}