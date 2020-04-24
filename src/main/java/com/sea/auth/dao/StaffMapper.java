package com.sea.auth.dao;

import com.sea.auth.entity.Staff;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * @author: xulei
 * @Date: 2020-04-22
 */
@Mapper
public interface StaffMapper {
    Staff getById(@Param("id") Integer id);
}
