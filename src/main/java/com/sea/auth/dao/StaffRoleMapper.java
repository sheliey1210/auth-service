package com.sea.auth.dao;

import com.sea.auth.entity.StaffRole;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author: xulei
 * @Date: 2020-04-22
 */
@Mapper
public interface StaffRoleMapper {

    int insert(StaffRole record);

    List<StaffRole> getByUserIdAndAppId(@Param("userId") Integer userId,
                                        @Param("appId") Integer appId);
}