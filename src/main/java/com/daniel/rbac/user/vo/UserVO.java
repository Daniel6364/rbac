package com.daniel.rbac.user.vo;

import lombok.Data;

import java.util.List;

@Data
public class UserVO {

    private String id;
    private String userName;
    private String phoneNo;
    private String email;
    private String password;
    private String roleCd;
    private String roleName;
    private String systemGrpCd;
    private String systemGrpName;
    private String systemCd;
    private String systemName;

}
