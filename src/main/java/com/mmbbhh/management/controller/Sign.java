package com.mmbbhh.management.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.mmbbhh.management.model.Financial;
import com.mmbbhh.management.service.SignService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/sign")
public class Sign {
    @Autowired
    SignService signService;

    //签到
    @GetMapping("")
    public JSONObject signIn() {
        JSONObject json = new JSONObject();
        if (signService.sign() == 1) {
            json.put("state", 200);
            json.put("message", "签到提交成功，等待确认");
        } else {
            json.put("state", 400);
            json.put("message", "你今天已经签过了");
        }
        return json;
    }


    //获取员工当月签到信息
    @GetMapping("/all")
    public Object allSign() {
        return signService.allSign();
    }

    //获取本部门员工签到请求
    @GetMapping("/check")
    public List<Map<String, Object>> checkInfo() {
        return signService.signInfo();
    }

    //批准签到信息
    @PostMapping("/submit")
    public JSONObject submit(int[] list, Boolean bol) {
        JSONObject json = new JSONObject();
        if (signService.submitSign(list, bol)) {
            json.put("state", 200);
            json.put("message", "提交成功");
        } else {
            json.put("state", 400);
            json.put("message", "提交失败，请重试");
        }
        return json;
    }

    //获取员工考勤记录
    @GetMapping("/month")
    public Object allInfo() {
        return signService.allUserSign();
    }
}
