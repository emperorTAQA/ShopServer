package com.gk.study;

import com.gk.study.sgrid.pub.SgridConf;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.context.annotation.Bean;

/**
 * @author lengqin1024(微信)
 * @email net936@163.com
 */
@SpringBootApplication
public class MySpringApplication implements CommandLineRunner {

    @Autowired
    private SgridConf config;
    public static void main(String[] args) {
        SpringApplication.run(MySpringApplication.class, args);
    }

    @Bean
    public TomcatServletWebServerFactory servletContainer(){
        return new TomcatServletWebServerFactory(config.server.port) ;
    }


    public void run(String... args) throws Exception {
        System.out.println("Server: " + config);
        System.out.println("Server: " + config.server.port);
    }
}
