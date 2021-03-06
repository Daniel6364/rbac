package com.daniel.rbac.user.service;

import com.daniel.rbac.user.vo.UserVO;

import java.io.IOException;
import java.util.List;

public interface UserService {
    UserVO getUserId(String id) throws IOException;

    String getDbStatus() throws IOException;

    List<UserVO> getLogIn(UserVO userVO) throws IOException;
}
