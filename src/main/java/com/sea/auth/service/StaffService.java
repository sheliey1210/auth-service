package com.sea.auth.service;

import java.util.Map;

/**
 * @author: xulei
 * @Date: 2020-04-23
 */
public interface StaffService {
    Map getRolesByStaffIdAndAppId(Integer staffId, Integer appId);
}
