package com.daniel.rbac.user.mapper;


import com.daniel.rbac.user.vo.UserVO;

import java.io.IOException;


public interface UserMapper {
    UserVO getUserId(String id);

    String getSysdate();
}
