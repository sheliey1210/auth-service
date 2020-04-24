package com.sea.auth.controller;

import com.sea.auth.dto.RetDTO;
import com.sea.auth.service.StaffService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * @author: xulei
 * @Date: 2020-04-23
 */
@Slf4j
@RestController
@RequestMapping("/api/staff")
public class StaffController {

    @Autowired(required = false)
    private StaffService staffService;

    @GetMapping("/getRolesByStaffId")
    public RetDTO getRolesByStaffIdAndAppId(@RequestParam("staffId") Integer staffId,
                                            @RequestParam("appId") Integer appId){
        log.info("getRolesByStaffIdAndAppId, staffId = {}, appId = {}", staffId, appId);
        Map result = staffService.getRolesByStaffIdAndAppId(staffId, appId);
        return RetDTO.getSuccessData(result);
    }
}
