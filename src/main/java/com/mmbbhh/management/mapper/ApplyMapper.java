package com.mmbbhh.management.mapper;

import com.mmbbhh.management.model.Apply;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface ApplyMapper {
    List<Apply> getApply(int id);
    int apply(int id, String message, String date, String title);
    List<Apply> staff(int id);
    void applyCheck(int id, int state, String reason);
}
