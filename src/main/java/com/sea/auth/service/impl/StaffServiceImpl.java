package com.sea.auth.service.impl;

import com.sea.auth.dao.*;
import com.sea.auth.entity.*;
import com.sea.auth.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * @author: xulei
 * @Date: 2020-04-23
 */
@Service
public class StaffServiceImpl implements StaffService {

    @Autowired(required = false)
    private StaffRoleMapper staffRoleMapper;

    @Autowired(required = false)
    private RolePermissionMapper rolePermissionMapper;

    @Autowired(required = false)
    private RoleMapper roleMapper;

    @Autowired(required = false)
    private MenuMapper menuMapper;

    @Autowired(required = false)
    private PermissionMapper permissionMapper;

    @Override
    public Map getRolesByStaffIdAndAppId(Integer staffId, Integer appId) {
        Map<String, Object> result = new HashMap<>();
        List<StaffRole> staffRoles = staffRoleMapper.getByUserIdAndAppId(staffId, appId);
        if(CollectionUtils.isEmpty(staffRoles)){
            return result;
        }

        List<Integer> roleIds = staffRoles.stream().map(sr -> sr.getRoleId()).collect(Collectors.toList());
        List<RolePermission> rolePermissions = rolePermissionMapper.getByAppIdAndRoleIds(appId, roleIds);

        List<Integer> menuIds = rolePermissions.stream().map(m -> m.getMenuId()).collect(Collectors.toList());
        List<Integer> permissionIds = rolePermissions.stream().map(p -> p.getPermissionId()).collect(Collectors.toList());

        List<Role> roles = roleMapper.getByIds(roleIds);
        List<Menu> menus = menuMapper.getByIds(menuIds);
        List<Permission> permissions = permissionMapper.getByIds(permissionIds);

        List<String> roleCodes = roles.stream().map(_r -> _r.getCode()).collect(Collectors.toList());
        List<String> menuCodes = menus.stream().map(_m -> _m.getCode()).collect(Collectors.toList());
        List<String> permissionCodes = permissions.stream().map(_p -> _p.getCode()).collect(Collectors.toList());

        result.put("roles", roleCodes);
        result.put("menus", menuCodes);
        result.put("permissions", permissionCodes);

        return result;
    }
}
