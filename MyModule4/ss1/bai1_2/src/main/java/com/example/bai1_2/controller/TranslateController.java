package com.example.bai1_2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.HashMap;
import java.util.Map;

@Controller
public class TranslateController {
    static Map<String, String> map = new HashMap<>();

    static {
        map.put("one", "một");
        map.put("two", "hai");
        map.put("three", "ba");
        map.put("four", "bốn");
        map.put("five", "năm");
    }

    @GetMapping("/dictionary1")
    public String translate(Model model) {
        return "/dictionary";
    }

    @PostMapping("/dictionary1")
    public String doTranslate(Model model,
                              @RequestParam("eng") String eng) {
        String result = map.get(eng);
        if (result == null) {
            model.addAttribute("vn", "không có trong từ điển");
        } else {
            model.addAttribute("vn",result);
        }
        return "/dictionary";
    }

}
