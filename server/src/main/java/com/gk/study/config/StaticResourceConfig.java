package com.gk.study.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class StaticResourceConfig extends WebMvcConfigurerAdapter {

    @Autowired
    private SimpConfig config;

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        String uploadPath = "file:" + config.server.mapConf.get("uploadPath");
        String webPath = "file:" + config.server.staticPath;
        System.out.println("uploadPath" + uploadPath);
        System.out.println("webPath" + webPath);
        registry.addResourceHandler("/staticfiles/**")
                .addResourceLocations(uploadPath);
        registry.addResourceHandler("/web/**")
                .addResourceLocations(webPath);
        super.addResourceHandlers(registry);
    }
}