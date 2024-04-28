package com.gk.study.sgrid.pub;

import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.config.YamlPropertiesFactoryBean;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Properties;
import java.util.Set;

@Component
public class SgridConf implements SgridConfInterface {
    public Server server;
    public HashMap<String, String> config = new HashMap<>();
    static String SGRID_PROD_CONF_PATH = "SGRID_PROD_CONF_PATH";
    static String SGRID_TARGET_PORT = "SGRID_TARGET_PORT";
    static String SGRID_DEV_CONF = "sgrid.yml";

    public SgridConf() {
        this.SetSgridConf();
        this.SetDBProperty(config.get("mysql-addr"), config.get("mysql-username"), config.get("mysql-password"));
    }

    private void loadYaml(Resource resource, Properties properties) {
        YamlPropertiesFactoryBean yamlFactory = new YamlPropertiesFactoryBean();
        yamlFactory.setResources(resource);
        yamlFactory.afterPropertiesSet();
        properties.putAll(yamlFactory.getObject());
    }

    @Override
    public void SetDBProperty(String url, String username, String password) {
        System.setProperty("spring.datasource.url", url);
        System.setProperty("spring.datasource.username", username);
        System.setProperty("spring.datasource.password", password);
    }

    @Override
    public void SetSgridConf() {
        try {
            String sgridProdPath = System.getenv(SGRID_PROD_CONF_PATH);
            String sgridTargetPort = System.getenv(SGRID_TARGET_PORT);
            Properties properties = new Properties();

            if (sgridProdPath == null || sgridProdPath.isEmpty()) {
                System.out.println("run dev ::  " + SGRID_DEV_CONF);
                Resource resource = new ClassPathResource(SGRID_DEV_CONF);
                loadYaml(resource, properties);
            } else {
                System.out.println("sgridProdPath" + sgridProdPath);
                Resource resource = new FileSystemResource(sgridProdPath);
                loadYaml(resource, properties);
            }
            this.server = new Server();
            if (sgridTargetPort == null || sgridTargetPort.isEmpty()) { // 为空 则用默认配置端口
                this.server.setPort((Integer) properties.get("server.port"));
            } else {  // 否则 用指定端口
                this.server.setPort(Integer.valueOf(sgridTargetPort));
            }
            this.server.setName(properties.getProperty("server.name", "SgridBootApplication"));
            this.server.setProtocol(properties.getProperty("server.protocol", "http"));
            Set<String> strings = properties.stringPropertyNames();
            String confKey = "config.";
            System.out.println("strings" + strings);
            for (String key : strings) {
                boolean b = key.startsWith(confKey);
                if (b) {
                    String property = properties.getProperty(key);
                    String newKey = key.replace(confKey, "");
                    config.put(newKey, property);
                    System.out.println(newKey + " | " + property);
                }
            }
        } catch (Exception e) {
            System.out.println("e" + e.toString());
        }
    }

    @Getter
    @Setter
    public static class Server {
        public Integer port;
        public String name;
        public String host;
        public String protocol;
        public String language;
    }
}
