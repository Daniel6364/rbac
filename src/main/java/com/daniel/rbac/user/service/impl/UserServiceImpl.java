package com.daniel.rbac.user.service.impl;

import com.daniel.rbac.user.mapper.UserMapper;
import com.daniel.rbac.user.service.UserService;
import com.daniel.rbac.user.vo.UserVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;

@Service("UserService")
public class UserServiceImpl implements UserService {

    Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);

    private UserMapper userMapper;

    @Override
    public UserVO getUserId(String id) throws IOException {
        logger.info("getUserId");
        logger.info("getUserId : " + id);
        return userMapper.getUserId(id);
    }

    @Override
    public String getSysdate() throws IOException {
        return userMapper.getSysdate();
    }
}
