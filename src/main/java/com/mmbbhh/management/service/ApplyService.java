package com.mmbbhh.management.service;

import com.mmbbhh.management.mapper.ApplyMapper;
import com.mmbbhh.management.mapper.UserMapper;
import com.mmbbhh.management.model.Apply;
import com.mmbbhh.management.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@Service
public class ApplyService {
    @Autowired
    ApplyMapper applyMapper;
    @Autowired
    UserMapper userMapper;

    private User getUser() {
        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext()
                .getAuthentication()
                .getPrincipal();
        //转化为user实体
        return userMapper.loadUserByUsername(userDetails.getUsername());
    }

    //获取个人申请
    public List<Apply> getApply() {
        User user = getUser();
        int id = user.getId();
        return applyMapper.getApply(id);
    }

    //添加申请
    public Boolean apply(String content, String title) {
        User user = getUser();
        int id = user.getId();
        SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String date = formatter.format(new Date());
        return applyMapper.apply(id, content, date, title)==1;
    }

    //获取员工申请
    public Object staff() {
        User user = getUser();
        Map<String, Object> info = userMapper.getUserInfo(user.getUsername());
        if (Integer.parseInt(String.valueOf(info.get("rid"))) == 2) {
            return applyMapper.staff(Integer.parseInt(String.valueOf(info.get("did"))));
        }  else {
            return 300;
        }
    }

    //审核员工申请
    public Boolean check(int id, Boolean bol, String reason) {
        User user = getUser();
        int state = bol? 1 : -1;
        Map<String, Object> info = userMapper.getUserInfo(user.getUsername());
        if (Integer.parseInt(String.valueOf(info.get("rid"))) == 2) {
            if (Objects.equals(reason, "")) {
                applyMapper.applyCheck(id, state, "无");
            } else {
                applyMapper.applyCheck(id, state, reason);
            }
            return true;
        }  else {
            return false;
        }
    }
}
