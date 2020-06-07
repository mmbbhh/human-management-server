package com.mmbbhh.management.controller;

import com.alibaba.fastjson.JSONObject;
import com.mmbbhh.management.model.UserInfo;
import com.mmbbhh.management.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;
import java.util.Objects;

@RestController
public class User {
    @Autowired
    UserService userService;

    //获取用户信息
    @GetMapping("/user")
    public JSONObject user() {
        return new JSONObject(userService.getUserInfo());
    }

    //修改信息
    @PostMapping("/user/edit")
    public JSONObject userEdit(String oPwd, String nPwd, String phone, String imgUrl) {
        JSONObject json = new JSONObject();
        Boolean success;
        if (Objects.equals(phone, ""))
            success = userService.editUserInfo(oPwd, nPwd, "no", imgUrl);
        else success = userService.editUserInfo(oPwd, nPwd, phone, imgUrl);
        if (success) {
            json.put("state", 200);
            json.put("message", "修改成功!");
        } else {
            json.put("state", 400);
            json.put("message", "原始密码错误");
        }
        return json;
    }

    //获取所有员工的信息
    @GetMapping("/user/all")
    public Object allUser() {
        return userService.allUser();
    }

    //删除员工
    @PostMapping("/user/delete")
    public JSONObject delUser(int id) {
        JSONObject json = new JSONObject();
        if (userService.delUser(id)) {
            json.put("state", 200);
            json.put("message", "删除成功");
        } else {
            json.put("state", 400);
            json.put("message", "删除失败");
        }
        return json;
    }

    //修改详细信息
    @PostMapping("/user/editInfo")
    public JSONObject editUser(String name,
                            String id,
                            String user_name,
                            String tel,
                            int age,
                            String sex,
                            double pay,
                            String addr,
                            int did,
                            int rid) {
        UserInfo userInfo = new UserInfo();
        userInfo.setId(id);
        userInfo.setAddr(addr);
        userInfo.setAge(age);
        userInfo.setName(name);
        userInfo.setUser_name(user_name);
        userInfo.setSex(sex);
        userInfo.setTel(tel);
        userInfo.setPay(pay);
        JSONObject json = new JSONObject();
        if (userService.editUser(userInfo, rid, did)) {
            json.put("state", 200);
            json.put("message", "编辑成功");
        } else {
            json.put("state", 400);
            json.put("message", "编辑失败，请稍后再试");
        }
        return json;
    }

    //添加用户
    @PostMapping("/user/addUser")
    public JSONObject addUser(
            String name,
            String user_name,
            String password,
            String tel,
            int age,
            String sex,
            double pay,
            String addr,
            int did,
            int rid) {
        UserInfo userInfo = new UserInfo();
        userInfo.setAddr(addr);
        userInfo.setPassword(password);
        userInfo.setAge(age);
        userInfo.setName(name);
        userInfo.setUser_name(user_name);
        userInfo.setSex(sex);
        userInfo.setTel(tel);
        userInfo.setPay(pay);
        JSONObject json = new JSONObject();
        if (userService.addUser(userInfo, did, rid)) {
            json.put("state", 200);
            json.put("message", "添加成功");
        } else {
            json.put("state", 400);
            json.put("message", "用户已存在");
        }
        return json;
    }
}
