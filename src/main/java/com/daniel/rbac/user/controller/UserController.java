package com.daniel.rbac.user.controller;

import com.daniel.rbac.user.service.UserService;
import com.daniel.rbac.user.vo.UserVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;

@RestController
@RequestMapping("user")
public class UserController {

    private final static Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;

    @GetMapping("/status")
    public ResponseEntity<Void> getUserApiStatus() throws IOException {
        return new ResponseEntity<>(HttpStatus.OK);
    }


    @PostMapping("/login")
    public ResponseEntity<Void> userList(UserVO userDTO) throws IOException {




        return new ResponseEntity<>(HttpStatus.OK);
    }


    @GetMapping("/{id}")
    public ResponseEntity<UserVO> getUserId(@PathVariable String id) {

        UserVO userVO = userService.getUserId(id);

        return new ResponseEntity<UserVO>(userVO, HttpStatus.OK);
    }



}
