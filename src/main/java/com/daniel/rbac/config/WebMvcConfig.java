package com.daniel.rbac.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @Package : com.daniel.rbac.config
 * @Class : WebMvcConfig
 * @Description :   웹 설정
 * @Date : 2022/05/07
 * @Author : Daniel
 * @Comment :
 */
@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

    Logger logger = LoggerFactory.getLogger(WebMvcConfig.class);

    @Override
    public void addResourceHandlers(final ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/**")
                .addResourceLocations("classpath:/templates/", "classpath:/templates/views/", "classpath:/static/", "classpath:/static/");
    }


}