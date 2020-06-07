package com.mmbbhh.management.service;

import com.mmbbhh.management.mapper.NoticeMapper;
import com.mmbbhh.management.mapper.UserMapper;
import com.mmbbhh.management.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

@Service
public class NoticeService {
    @Autowired
    NoticeMapper noticeMapper;
    @Autowired
    UserMapper userMapper;

    private User getUser() {
        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext()
                .getAuthentication()
                .getPrincipal();
        //转化为user实体
        return userMapper.loadUserByUsername(userDetails.getUsername());
    }

    //提交通知
    public Boolean uploadNotice(String content) {
        User user = getUser();
        int id = user.getId();
        Map<String, Object> info = userMapper.getUserInfo(user.getUsername());
        String username = user.getUsername();
        int did = (int) info.get("did");
        SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String date = formatter.format(new Date());
        try {
            noticeMapper.uploadNotice(content, username, id, did, date);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    //获取通知
    public Map<String, Object> getNotice() {
        User user = getUser();
        Map<String, Object> info = userMapper.getUserInfo(user.getUsername());
        int did = (int) info.get("did");
        return noticeMapper.getNotice(did);
    }
}
