package com.mmbbhh.management.service;

import com.mmbbhh.management.mapper.UserMapper;
import com.mmbbhh.management.model.User;
import com.mmbbhh.management.model.UserInfo;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Map;
import java.util.Objects;

@Service
public class UserService implements UserDetailsService {
    @Autowired
    UserMapper userMapper;
    @Override
    public UserDetails loadUserByUsername(String username) throws
        UsernameNotFoundException {
            User user = userMapper.loadUserByUsername(username);
            if (user == null) {
                throw new UsernameNotFoundException("账户不存在！");
            }
            user.setRoles(userMapper.getUserRolesByUid(user.getId()));
            return user;
        }

    private User getUser() {
        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext()
                .getAuthentication()
                .getPrincipal();
        //转化为user实体
        return userMapper.loadUserByUsername(userDetails.getUsername());
    }

    //获取用户信息
    public Map<String, Object> getUserInfo() {
        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext()
                .getAuthentication()
                .getPrincipal();
        return userMapper.getUserInfo(userDetails.getUsername());
    }

    //修改用户信息
    public Boolean editUserInfo(String oPwd, String nPwd, String phone, String imgUrl) {
        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext()
                .getAuthentication()
                .getPrincipal();
        User user = userMapper.loadUserByUsername(userDetails.getUsername());
        String oPhone = user.getUser_phone();
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(10);
        if ( encoder.matches(oPwd,userDetails.getPassword()) ) {
            String pwd = encoder.encode(nPwd);
            if (Objects.equals(phone, "no")) {
                userMapper.editUserInfo(user.getId(), pwd, oPhone, imgUrl);
            } else {
                userMapper.editUserInfo(user.getId(), pwd, phone, imgUrl);
            }
            return true;
        } else {
            return false;
        }
    }

    //获取所有用户信息
    public Object allUser() {
        User user = getUser();
        Map<String, Object> info = userMapper.getUserInfo(user.getUsername());
        if (Integer.parseInt(String.valueOf(info.get("rid"))) == 1) {
            return userMapper.allUser();
        }  else {
            return 300;
        }
    }

    //删除员工
    public boolean delUser(int id) {
        User user = getUser();
        Map<String, Object> info = userMapper.getUserInfo(user.getUsername());
        if (Integer.parseInt(String.valueOf(info.get("rid"))) == 1) {
            try {
                userMapper.delUser(id);
                return true;
            } catch (Exception e) {
                return false;
            }
        } else {
            return false;
        }
    }

    //添加员工
    public boolean addUser(UserInfo userInfo,int did, int rid) {
        User user = getUser();
        Map<String, Object> info = userMapper.getUserInfo(user.getUsername());
        if (Integer.parseInt(String.valueOf(info.get("rid"))) == 1) {
            int id = 200000 + did * 1000 + userMapper.userNum(did);
            String workid = Integer.toString(id);
            BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
            String newPwd = passwordEncoder.encode(userInfo.getPassword());
            if (userMapper.ifExist(userInfo.getUser_name()) != 0) {
                return false;
            } else {
                try {
                    userMapper.addUser(userInfo, newPwd, workid);
                    int uid = userMapper.userId(userInfo.getUser_name());
                    userMapper.addRole(uid, rid);
                    userMapper.addDep(uid, did);
                } catch (Exception e) {
                    return false;
                }
                return true;
            }
        } else {
            return false;
        }
    }

    //编辑员工
    public boolean editUser(UserInfo userInfo, int rid, int did) {
        User user = getUser();
        Map<String, Object> info = userMapper.getUserInfo(user.getUsername());
        if (Integer.parseInt(String.valueOf(info.get("rid"))) == 1) {
            try {
                userMapper.editUser(userInfo, rid, did);
                return true;
            } catch (Exception e) {
                return false;
            }
        } else {
            return false;
        }
    }
}
