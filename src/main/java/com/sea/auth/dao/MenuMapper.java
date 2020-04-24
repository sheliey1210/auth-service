package com.sea.auth.dao;

import com.sea.auth.entity.Menu;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author: xulei
 * @Date: 2020-04-22
 */
@Mapper
public interface MenuMapper {

    int insert(Menu record);
    List<Menu> getByIds(@Param("ids") List<Integer> ids);

}