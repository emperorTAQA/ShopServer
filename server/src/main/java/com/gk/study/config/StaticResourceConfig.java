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
        registry.addResourceHandler("/staticfiles/**")
                .addResourceLocations("file:" + config.server.mapConf.get("uploadPath"));
        registry.addResourceHandler("/web/**")
                .addResourceLocations("file:" + config.server.staticPath);
        super.addResourceHandlers(registry);
    }
}