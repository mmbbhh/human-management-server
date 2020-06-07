package com.mmbbhh.management.mapper;

import com.mmbbhh.management.model.Financial;
import com.mmbbhh.management.model.Role;
import com.mmbbhh.management.model.User;
import com.mmbbhh.management.model.UserInfo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Mapper
@Repository
public interface UserMapper {
    User loadUserByUsername(String username); //获取用户信息
    List<Role> getUserRolesByUid(Integer id); //获取权限相关信息
    Map<String, Object> getUserInfo(String username); //获取用户信息
    void editUserInfo(int id, String password, String phone, String imgUrl); //个人修改信息
    List<Map<String, Object>> allUser(); //获取所有用户信息
    int ifExist(String username); //判断用户是否存在
    void delUser(int id); //删除用户
    int userNum(int id); //获取部门内员工数量
    void addUser(UserInfo user, String password, String workid); //添加用户
    int userId(String username); //获取内部索引id
    void addRole(int uid, int rid);//添加权限记录
    void addDep(int uid, int did);//添加部门记录
    void editUser(UserInfo user, int rid, int did);//编辑用户
    List<Financial> userPay(int month);
}
