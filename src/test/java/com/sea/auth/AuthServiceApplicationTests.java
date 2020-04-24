package com.sea.auth;

import com.sea.auth.dao.StaffMapper;
import com.sea.auth.entity.Staff;
import lombok.extern.slf4j.Slf4j;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@Slf4j
@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class AuthServiceApplicationTests {

    @Autowired
    private StaffMapper staffMapper;

    @Test
    public void contextLoads() {
    }

    @Test
    public void testGetById(){
        Staff staff = staffMapper.getById(1);
        log.info("r = {}", staff);
        Assert.assertTrue(staff != null);
    }
}
