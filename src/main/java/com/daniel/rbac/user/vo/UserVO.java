package com.daniel.rbac.user.vo;

import lombok.Data;

import java.util.List;

@Data
public class UserVO {

    private String id;
    private String user_name;
    private String phone_no;
    private String email;
    private String password;

    private String role_cd;
    private String role_name;
    private String system_grp_cd;
    private String system_grp_name;
    private String system_cd;
    private String system_name;

}
