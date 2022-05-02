package com.daniel.rbac.user.controller;

import com.daniel.rbac.user.vo.UserVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;

@RestController
@RequestMapping("user")
public class UserController {

    private final static Logger logger = LoggerFactory.getLogger(UserController.class);


    @GetMapping("/status")
    public ResponseEntity<Void> getUserApiStatus() throws IOException {
        return new ResponseEntity<>(HttpStatus.OK);
    }


    @PostMapping("/login")
    public ResponseEntity<Void> userList(UserVO userDTO) throws IOException {




        return new ResponseEntity<>(HttpStatus.OK);
    }

}
