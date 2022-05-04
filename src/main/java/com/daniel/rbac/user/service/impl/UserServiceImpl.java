package com.daniel.rbac.user.service.impl;

import com.daniel.rbac.user.mapper.UserMapper;
import com.daniel.rbac.user.service.UserService;
import com.daniel.rbac.user.vo.UserVO;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

    Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);

    @Autowired
    private UserMapper userMapper;

    @Override
    public String getDbStatus() throws IOException {
        return userMapper.getDbStatus();
    }

    @Override
    public UserVO getLogIn(UserVO userVO) throws IOException {
        return userMapper.getLogIn(userVO);
    }

    @Override
    public UserVO getUserId(String id) throws IOException {
        return userMapper.getUserId(id);
    }



}
