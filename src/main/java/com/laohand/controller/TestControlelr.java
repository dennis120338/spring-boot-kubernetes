package com.laohand.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author dennis
 */
@RestController("/")
public class TestControlelr {
    @RequestMapping("/test")
    public String test() {
        return "test2244444";
    }
}
