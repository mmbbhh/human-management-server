package com.mmbbhh.management.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Mapper
@Repository
public interface SignMapper {
    void sign(int id, String date, int bol);
    List<String> allCSign(int id, String month);
    List<String> allRSign(int id, String month);
    List<Map<String, Object>> getUserInfo(int id);
    void submitSign(int id, int type);
}
