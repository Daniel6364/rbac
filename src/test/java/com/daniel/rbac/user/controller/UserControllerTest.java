package com.daniel.rbac.user.controller;

import com.daniel.rbac.user.service.UserService;
import com.daniel.rbac.user.vo.UserVO;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

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
    @DisplayName("=====// getLogIn")
    void getLogIn() throws IOException {

        UserVO userVO = new UserVO();
        userVO.setId("cuser");
        userVO.setPassword("1234");

        String roleName = "제한된 사용자";
        String systemGrpCd = "edit_user_files";
        String systemCd = "select";
        String systemName = "조회";

        List<UserVO> result = userService.getLogIn(userVO);
        assertAll(
                () -> assertEquals(roleName, result.get(0).getRoleName())
                , () -> assertEquals(systemGrpCd, result.get(0).getSystemGrpCd())
                , () -> assertEquals(systemCd, result.get(0).getSystemCd())
                , () -> assertEquals(systemName, result.get(0).getSystemName())
        );

    }
}