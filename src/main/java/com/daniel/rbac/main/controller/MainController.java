package com.daniel.rbac.main.controller;

import com.daniel.rbac.user.vo.UserVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @Package : com.daniel.rbac.main.controller
 * @Class : MainController
 * @Description :
 * @Date : 2022/05/07
 * @Author : Daniel
 * @Comment :
 */
@Controller
public class MainController {

    Logger logger = LoggerFactory.getLogger(MainController.class);

    /**
     * @Method : getMainPage
     * @Description :   메인페이지로 이동
     * @Date : 2022/05/07
     * @Author : Daniel
     * @Comment :
     */
    @RequestMapping(value = "/")
    public ModelAndView getMainPage() throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("main");
        return modelAndView;
    }




}
