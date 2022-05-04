package com.daniel.rbac.user.mapper;


import com.daniel.rbac.user.vo.UserVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.io.IOException;
import java.lang.annotation.*;

@Repository
@Mapper
public interface UserMapper {
    UserVO getUserId(String id);

    String getDbStatus();
}
