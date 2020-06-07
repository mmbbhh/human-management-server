package com.mmbbhh.management.service;

import com.mmbbhh.management.mapper.SignMapper;
import com.mmbbhh.management.mapper.UserMapper;
import com.mmbbhh.management.model.Financial;
import com.mmbbhh.management.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import java.lang.reflect.Array;
import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class SignService {
    @Autowired
    UserMapper userMapper;
    @Autowired
    SignMapper signMapper;

    private User getUser() {
        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext()
                .getAuthentication()
                .getPrincipal();
        //转化为user实体
        return userMapper.loadUserByUsername(userDetails.getUsername());
    }

    //签到
    public int sign() {
        User user = getUser();
        //获取id
        int id = user.getId();

        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext()
                .getAuthentication()
                .getPrincipal();

        String auth = userDetails.getAuthorities().toString();
        boolean status = auth.contains("ROLE_user");

        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String date = formatter.format(new Date());
        try {
            if (status) {
                signMapper.sign(id, date, 0);
                return 1;
            } else {
                signMapper.sign(id, date, 1);
                return 1;
            }
        } catch (Exception e) {
            System.out.println(e);
            return 0;
        }
    }

    //获取当月前档信息
    public List<List<String>> allSign() {
        User user = getUser();
        //获取id
        int id = user.getId();
        SimpleDateFormat formatter = new SimpleDateFormat("MM");
        String date = formatter.format(new Date());
        List<List<String>> list= new ArrayList<>();
        list.add(signMapper.allCSign(id, date));
        list.add(signMapper.allRSign(id, date));
        return list;
    }

    //获取部门员工签到提交信息
    public List<Map<String, Object>> signInfo() {
        User user = getUser();
        int id = user.getId();
        return signMapper.getUserInfo(id);
    }

    //审批员工签到
    public boolean submitSign(int[] list, Boolean bol) {
        int type;
        if (bol) {
            type = 1;
        } else type = -1;
        try {
            for (int value : list) {
                signMapper.submitSign(value, type);
            }
            return true;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
    }

    //获取考勤记录
    public List<Financial> allUserSign() {
        Calendar cal = Calendar.getInstance();
        int month = cal.get(Calendar.MONTH) + 1;
        List<Financial> userInfo = userMapper.userPay(month);
        userInfo.forEach(str -> {
            str.setSum(str.getUser_pay()/21*str.getNum());
        });
        return userInfo;
    }
}
