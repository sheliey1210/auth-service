package com.sea.auth.dao;

import com.sea.auth.entity.Role;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author: xulei
 * @Date: 2020-04-22
 */
@Mapper
public interface RoleMapper {

    int insert(Role record);

    List<Role> getByIds(@Param("ids") List<Integer> ids);
}