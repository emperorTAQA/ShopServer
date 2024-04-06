package com.gk.study.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;

import java.util.HashMap;
import java.util.Map;

@Configuration
@ConfigurationProperties
@PropertySources({
        @PropertySource(value = "classpath:simp.yaml", factory = MultipleYamlPropertySourceFactory.class),
})
public class SimpConfig {
    public Server server;
    public static class Server{
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

        public Map<String,String> mapConf = new HashMap<>();

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
