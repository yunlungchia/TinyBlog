package com.personal.blog.service.impl;

import com.personal.blog.mapper.UserMapper;
import com.personal.blog.po.User;
import com.personal.blog.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author YunLung Chia
 * @date 2022/5/23
 */
@Service
public class UserService implements IUserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public User selectByPrimaryKey(Long id){
        User user = userMapper.selectByPrimaryKey(id);
        return user;
    }


}
