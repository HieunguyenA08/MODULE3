package com.example.bai2_1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SpicesController {
    @GetMapping("/123")
    private String show() {
        return "spices";
    }
    @PostMapping("/123")
    private String exchange (Model model, @RequestParam("condiments")  String[] spices){
        model.addAttribute("s", spices);
        return "spices";
    }

}
