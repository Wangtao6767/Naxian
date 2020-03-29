package com.naxian;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.naxian.mapper")
public class NaxianApplication {

    public static void main(String[] args) {
        SpringApplication.run(NaxianApplication.class, args);
    }

}
