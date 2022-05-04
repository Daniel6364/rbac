package com.daniel.rbac.user.controller;

import com.daniel.rbac.user.service.UserService;
import com.daniel.rbac.user.vo.UserVO;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;

@RestController
@RequiredArgsConstructor
@RequestMapping("user")
public class UserController {

    private final static Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;

    @GetMapping("/status")
    public ResponseEntity<Void> getUserApiStatus() throws IOException {
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @GetMapping("/db_status")
    public ResponseEntity<String> getDbStatus() throws IOException {
        String dbStatus = userService.getDbStatus();
        logger.debug(dbStatus);
        return new ResponseEntity<>(dbStatus, HttpStatus.OK);
    }

    @GetMapping("/user_id/{id}")
    public ResponseEntity<UserVO> getUserId(@PathVariable String id) throws IOException {
        UserVO userVO = userService.getUserId(id);
        return new ResponseEntity<>(userVO, HttpStatus.OK);
    }


    @PostMapping("/log_in")
    public ResponseEntity<UserVO> getLogIn(@RequestBody UserVO userVO) throws IOException {
        UserVO result = userService.getLogIn(userVO);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

}
