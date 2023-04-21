package com.example.bai1_1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class GreetingController {
    @GetMapping("/exchange")
    private String show() {
        return "exchange";
    }
    @PostMapping("/exchange")
            private String exchange (Model model,
                                     @RequestParam ("usd") String usd,
                                     RedirectAttributes redirectAttributes){
//    private String exchange(Model model,
//                            @RequestParam("usd")String usd,
//                            RedirectAttributes redirect) {
        double usdDouble = Double.parseDouble(usd);
        double vnd = 23.447 * usdDouble;
        redirectAttributes.addFlashAttribute("vnd", vnd);
        return "redirect:/exchange";
    }
}
