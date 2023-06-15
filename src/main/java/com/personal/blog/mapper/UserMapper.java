package com.personal.blog.mapper;

import com.personal.blog.po.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface UserMapper {

    @Select("SELECT * FROM user WHERE id = #{id}")
    User selectById(Long id);

    @Update("UPDATE user SET username=#{username}, email=#{email}, address = #{address} WHERE id = #{id}")
    int updataUserInfo(User user);
}