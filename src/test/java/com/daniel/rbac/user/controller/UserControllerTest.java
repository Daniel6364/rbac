package com.daniel.rbac.user.controller;

import com.daniel.rbac.user.service.UserService;
import com.daniel.rbac.user.vo.UserVO;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.IOException;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class UserControllerTest {


    @Autowired
    private UserService userService;

    @Test
    void getDbStatus() throws IOException {
        String dbStatus = userService.getDbStatus();
        String answer = "ORACLE";
        assertEquals(answer, dbStatus);
    }

    @Test
    @DisplayName("=====// getUserId")
    void getUserId() throws IOException {

        String id = "auser";
        String userName = "A유저";
        String phoneNo = "01033140782";
        String email = "auser@daum.net";

        UserVO userVO = userService.getUserId(id);
        assertAll(
                "=====// getUserId : CHECK",
                () -> assertEquals(id, userVO.getId()),
//                () -> assertEquals("buser", userVO.getId()),
                () -> assertNull(userVO.getRoleCd()),
                () -> assertEquals(userName, userVO.getUserName()),
                () -> assertEquals(phoneNo, userVO.getPhoneNo()),
                () -> assertEquals(email, userVO.getEmail())
        );
    }

    @Test
    void getLogIn() {
    }
}