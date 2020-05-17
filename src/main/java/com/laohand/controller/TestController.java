package com.laohand.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author dennis
 */
@RestController("/")
public class TestController {
    @RequestMapping("/test")
    public String test() {
        return "test224444455555566666";
    }

    @RequestMapping("/test2")
    public String test2() {
        return "test224444455555";
    }
}
