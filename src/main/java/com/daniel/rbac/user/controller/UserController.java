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
import java.util.List;

/**
 * @Package : com.daniel.rbac.user.controller
 * @Class : UserController
 * @Description :
 * @Date : 2022/05/07
 * @Author : Daniel
 * @Comment :
 */
@RestController
@RequiredArgsConstructor
@RequestMapping("user")
public class UserController {

    private final static Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;

    @GetMapping("/status")
    public ResponseEntity<Void> getUserApiStatus() {
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @GetMapping("/db/status")
    public ResponseEntity<String> getDbStatus() throws IOException {
        String dbStatus = userService.getDbStatus();
        logger.debug(dbStatus);
        return new ResponseEntity<>(dbStatus, HttpStatus.OK);
    }

    /**
     * @Method : getUserId
     * @Description :   사용자 아이디 조회
     * @Date : 2022/05/07
     * @Author : Daniel
     * @Comment :
     */
    @GetMapping("/id/{id}")
    public ResponseEntity<UserVO> getUserId(@PathVariable String id) throws IOException {
        UserVO userVO = userService.getUserId(id);
        return new ResponseEntity<>(userVO, HttpStatus.OK);
    }


    /**
     * @Method : getLogIn
     * @Description :   로그인
     * @Date : 2022/05/07
     * @Author : Daniel
     * @Comment :
     */
    @PostMapping("/login")
    public ResponseEntity<List<UserVO>> getLogIn(@RequestBody UserVO userVO) throws IOException {
        List<UserVO> result = userService.getLogIn(userVO);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

}
