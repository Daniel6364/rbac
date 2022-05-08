package com.daniel.rbac.user.vo;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class UserVOTest {

    @Test
    void getId() {

        UserVO userVO = new UserVO();
        userVO.setId("duser");

        String id = userVO.getId();
//        assertEquals("auser", id);

        assertAll(
                () -> assertEquals("duser", id)
//                , () -> assertEquals("auser", id)
        );

    }

    @Test
    void getUserName() {

        UserVO userVO = new UserVO();
        userVO.setUserName("B유저");

        String username = userVO.getUserName();

        assertEquals("B유저", username);


    }
}