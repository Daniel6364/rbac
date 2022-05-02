package com.daniel.rbac.user.service.impl;

import com.daniel.rbac.user.mapper.UserMapper;
import com.daniel.rbac.user.service.UserService;
import com.daniel.rbac.user.vo.UserVO;
import org.springframework.stereotype.Service;

import java.io.IOException;

@Service("UserService")
public class UserServiceImpl implements UserService {

    private UserMapper userMapper;

    @Override
    public UserVO getUserId(String id) throws IOException {
        return userMapper.getUserId(id);
    }
}
