package com.mmbbhh.management.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.Map;

@Mapper
@Repository
public interface NoticeMapper {
    void uploadNotice(String content, String username, int id, int did, String date);
    Map<String, Object> getNotice(int id);
}
