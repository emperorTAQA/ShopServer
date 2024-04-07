package com.gk.study.config;

import org.springframework.beans.factory.config.YamlPropertiesFactoryBean;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

@Component
public class SimpConfig {
    public Server server;

    public SimpConfig() {
        String simpProduction = System.getenv("SIMP_PRODUCTION");
        String simpProdYamlPath = System.getenv("SIMP_PROD_YAML");
        String simpTargetPort = System.getenv("SIMP_TARGET_PORT");
        String simpDevYamlPath = "simp.yaml";
        Properties properties = new Properties();
        if (simpProduction != null && !simpProduction.isEmpty()) {
            // Production environment, read from the production YAML file
            Resource resource = new FileSystemResource(simpProdYamlPath);
            loadYaml(resource, properties);
        } else {
            // Development environment, read from the classpath YAML file
            Resource resource = new ClassPathResource(simpDevYamlPath);
            System.out.println("simpDevYamlPath" + simpDevYamlPath + resource);
            loadYaml(resource, properties);
        }
        this.server = new Server();
        if(simpTargetPort.isEmpty()){ // 为空 则用默认配置端口
            this.server.setPort((Integer) properties.get("server.port"));
        }else{  // 否则 用指定端口
            this.server.setPort(Integer.valueOf(simpTargetPort));
        }
        this.server.setName(properties.getProperty("server.name", "DefaultServerName"));
        this.server.setType(properties.getProperty("server.type", "DefaultServerType"));
        this.server.setStaticPath(properties.getProperty("server.staticPath", "/static"));
        this.server.setStorage(properties.getProperty("server.storage", "/data"));
        Set<String> strings = properties.stringPropertyNames();
        String confKey = "server.mapConf.";
        for (String key : strings) {
            boolean b = key.startsWith(confKey);
            if (b) {
                String property = properties.getProperty(key);
                String newKey = key.replace(confKey, "");
                this.server.mapConf.put(newKey, property);
            }
        }
        System.out.println("this.server"+ this.server);
    }

    private void loadYaml(Resource resource, Properties properties) {
        YamlPropertiesFactoryBean yamlFactory = new YamlPropertiesFactoryBean();
        yamlFactory.setResources(resource);
        yamlFactory.afterPropertiesSet();
        properties.putAll(yamlFactory.getObject());
    }

    public static class Server {
        public Integer port;
        public String name;
        public String type;
        public String staticPath;
        public String storage;

        public Map<String, String> getMapConf() {
            return mapConf;
        }

        public void setMapConf(Map<String, String> mapConf) {
            this.mapConf = mapConf;
        }

        public Map<String, String> mapConf = new HashMap<>();

        public Integer getPort() {
            return port;
        }

        public void setPort(Integer port) {
            this.port = port;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getType() {
            return type;
        }

        public void setType(String type) {
            this.type = type;
        }

        public String getStaticPath() {
            return staticPath;
        }

        public void setStaticPath(String staticPath) {
            this.staticPath = staticPath;
        }

        public String getStorage() {
            return storage;
        }

        public void setStorage(String storage) {
            this.storage = storage;
        }

        @Override
        public String toString() {
            return "Server{" +
                    "port=" + port +
                    ", name='" + name + '\'' +
                    ", type='" + type + '\'' +
                    ", staticPath='" + staticPath + '\'' +
                    ", storage='" + storage + '\'' +
                    ", mapConf=" + mapConf +
                    '}';
        }
    }

    public Server getServer() {
        return server;
    }

    public void setServer(Server server) {
        this.server = server;
    }

    @Override
    public String toString() {
        return "SimpConfig{" +
                "server=" + server +
                '}';
    }
}
