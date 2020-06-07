package com.mmbbhh.management.controller;

import com.alibaba.fastjson.JSONObject;
import com.mmbbhh.management.service.ApplyService;
import com.mmbbhh.management.service.NoticeService;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/notice")
public class Notice {
    @Autowired
    NoticeService noticeService;

    @GetMapping("/upload")
    public JSONObject noticeUpload(String content) {
        JSONObject json = new JSONObject();
        if (noticeService.uploadNotice(content)) {
            json.put("state", 200);
            json.put("message", "发送成功");
        } else {
            json.put("state", 400);
            json.put("message", "发送失败，请稍后再试");
        }
        return json;
    }

    @GetMapping("")
    public Map<String, Object> getNotice() {
        return noticeService.getNotice();
    }
}
