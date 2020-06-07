package com.mmbbhh.management.controller;

import com.alibaba.fastjson.JSONObject;
import com.mmbbhh.management.service.ApplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/apply")
public class Apply {
    @Autowired
    ApplyService applyService;

    //获取自己申请
    @GetMapping("")
    public List<com.mmbbhh.management.model.Apply> getApply() {
        return applyService.getApply();
    }

    //提交申请
    @GetMapping("/upload")
    public JSONObject upload(String content, String title) {
        JSONObject json = new JSONObject();
        if (applyService.apply(content, title)) {
            json.put("state", 200);
            json.put("message", "提交成功");
            return json;
        }
        json.put("state", 400);
        json.put("message", "提交失败");
        return json;
    }

    //获取下属申请
    @GetMapping("/staffApply")
    public Object staff() {
        return applyService.staff();
    }

    //审核下属申请
    @GetMapping("/staffApply/check")
    public JSONObject check(int id, Boolean bol, String reason) {
        JSONObject json = new JSONObject();
        if (applyService.check(id, bol, reason)) {
            json.put("state", 200);
            json.put("message", "提交成功");
        } else {
            json.put("state", 300);
            json.put("message", "权限不足");
        }
        return json;
    }
}
